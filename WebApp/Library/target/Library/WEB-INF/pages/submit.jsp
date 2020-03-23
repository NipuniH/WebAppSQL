<%--
  Created by IntelliJ IDEA.
  User: nipuni
  Date: 2020-03-10
  Time: 10.04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
    <style>
        body
        {
            background-image: linear-gradient(lightblue, whitesmoke);
        }
        .contentBlock {
            background-color: azure;
            border-style: solid;
            width: 100%;
            font-size: large;
            padding: 15px;
            margin-left: 450px;
            margin-top: 150px;
            width: 280px;
        }
        .form input{
            display: inline-block;
            text-align: right;
            float: right;}
        .form label{
            display: inline-block;
            text-align: left;
            float: left;
        }
    </style>
</head>

<body onload="if (document.referrer === '')
    self.location='/login';">

<form action="/submit" method="post">
    <div class="contentBlock">
        <%--@declare id="authorname"--%><%--@declare id="copycount"--%><h2>Add Book</h2>
        <div class="BookName">

            <%--@declare id="bookname"--%><label for="BookName"><b>Book Name</b></label>
            <input type="text" placeholder="Book Name" name="bookName"  required>
        </div>
        <div class="AuthorName">
            <label for="AuthorName"><b>Author Name</b></label>
            <input type="text" placeholder="Author Name" name="author" required>
        </div>
        <div class="CopyCount">
            <label for="CopyCount"><b>Copy Count</b></label>
            <input type="number" placeholder="Copy Count (Number Only)" name="copyCount" required>
        </div>
        <div class="CoverImage">
            <%--@declare id="coverimage"--%><label for="CoverImage"><b>Cover Image</b></label>
            <input type="url" placeholder="Cover Image Link" name="coverImage" required>
        </div>
        <div class="BUTTON">
            <button onclick="window.location.href = '/submit';">submit</button>
            <a href="/index">Back to Home Page</a>


        </div>
    </div>
</form>
</body>
</html>
