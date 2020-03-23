package com.controllers;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class Controllers {
    private String name;

    ApplicationContext context =
            new ClassPathXmlApplicationContext("Spring-Module.xml");

    @GetMapping("/index")
    public ModelAndView displayHome(Model model, HttpServletRequest request) {

        ModelAndView modelPage = new ModelAndView();
        HttpSession session = request.getSession(false);

        ControllerDAO controllerDAO = (ControllerDAO) context.getBean("controllerDAO");
        Integer lastBookId = controllerDAO.findByBookId();
        int count = 1;
        StringBuilder books = new StringBuilder("<br>");
        while (count <= lastBookId) {
            Book bookObj = controllerDAO.findAllBooks(count);
            books.append("Name: ").append(bookObj.getBookName()).append("<br>").append("Author: ").append(bookObj.getAuthor()).append("<br>").append("<br>");
            count += 1;
        }

        model.addAttribute("msg", books.toString());
        modelPage.setViewName("index");
        model.addAttribute("sessionLogged", session);
        if (session != null) {
            String name = (String) session.getAttribute("name");
            model.addAttribute("welcomeMessage", "Hello, " + name + ",");
        }
        return modelPage;
    }


    @GetMapping("/login")
    public ModelAndView loginPage(HttpServletRequest requestLogged) {
        ModelAndView model = new ModelAndView();

        HttpSession session = requestLogged.getSession();

        if (session.getAttribute("name") == null) {
            model.setViewName("login");
        } else {
            model.setViewName("submit");
        }
        return model;
    }

    @PostMapping("/login")
    public String submit(HttpServletRequest req) {

        name = req.getParameter("uname");
        String password = req.getParameter("psw");

        String page = "login";

        ControllerDAO controllerDAO = (ControllerDAO) context.getBean("controllerDAO");
        User user1 = controllerDAO.findUser(name);

        if ((user1.getPassword()).equals(password)) {
            page = "submit";
            HttpSession session = req.getSession();
            session.setAttribute("name", name);
        }

        return page;
    }


    @GetMapping("/submit")
    public String submission() {
        return "submit";
    }

    @PostMapping("/submit")
    public void homePage(HttpServletRequest request) {

        String bookName = request.getParameter("bookName");
        String copyCount = request.getParameter("copyCount");
        String author = request.getParameter("author");
        String coverImage = request.getParameter("coverImage");
        ControllerDAO controllerDAO = (ControllerDAO) context.getBean("controllerDAO");
        Book book = new Book(bookName, author, Integer.parseInt(copyCount), coverImage, name);
        controllerDAO.insert(book);

    }


    @GetMapping("/logout")
    public String logoutPage() {
        return "/index";

    }

    @PostMapping("/logout")
    public String logout(HttpServletRequest requestLogout) {
        HttpSession session = requestLogout.getSession();
        session.invalidate();

        return "redirect:/index";
    }

}