package com.controllers;

import java.sql.*;
import javax.sql.DataSource;


public class JdbcDriver implements ControllerDAO {
    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void insert(Book book) {

        String sql = "INSERT INTO books " +
                "( bookName,author,copyCount,coverImage, addedBy) VALUES (?,?,?, ?, ?)";

        try (Connection conn = dataSource.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, book.getBookName());
            ps.setString(2, book.getAuthor());
            ps.setInt(3, book.getCopyCount());
            ps.setString(4, book.getCoverImage());
            ps.setString(5, book.getAddedBy());
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);

        }
    }

    public Book findAllBooks(int lastBookId) {
        String sql = "SELECT * FROM books where  bookId=?";

        try (Connection conn = dataSource.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, lastBookId);
            Book book = null;

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                book = new Book(rs.getString("bookName"), rs.getString("author"), rs.getInt("copyCount"), rs.getString("coverImage"), rs.getString("addedBy"));
            }

            rs.close();
            ps.close();

            return book;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public User findUser(String userId) {

        String sql = "SELECT * FROM User WHERE userId = ?";

        try (Connection conn = dataSource.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, userId);
            User user;
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User(
                        rs.getString("userId"),

                        rs.getString("password")
                );

            } else {
                user = new User(
                        "userId", "empty"
                );
            }
            rs.close();
            ps.close();
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public Integer findByBookId() {
        int lastBookId = 1;


        try (Connection conn = dataSource.getConnection()) {
            Statement stmt = conn.createStatement();
            String query = "SELECT MAX(bookId) FROM books";
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                lastBookId = (rs.getInt("MAX(bookId)"));
            }
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return lastBookId;
    }

}