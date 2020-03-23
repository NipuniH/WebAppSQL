<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nipuni
  Date: 2020-03-10
  Time: 08.54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            background-image: linear-gradient(lightblue, snow);
            border-style: solid;
        }

        /*.imgcontainer {*/

        /*    display: block;*/
        /*    margin-left: auto;*/
        /*    margin-right: auto;*/
        /*    width: 20%;*/
        /*    padding: 20px;*/

        /*}*/

        .UserName {
            width: 100%;
            text-align: center;
            font-size: x-large;
            padding: 15px;
        }

        .password-field {
            width: 100%;
            text-align: center;
            font-size: x-large;
            padding: 15px;
        }

        .BUTTON {
            text-align: center;
            padding: 12px;
            width: 100%;
        }

        .statement {
            text-align: center;

        }
    </style>
</head>
<body onload='document.login.name.focus();'>
<h2 align="center">Login for Library </h2>
<c:if test="${not empty error}"><div>${error}</div></c:if>
<c:if test="${not empty message}"><div>${message}</div></c:if>

<form action="/login" method="post" model="loginBean">

<%--    <div class="imgcontainer">--%>
<%--        <img src="login.png" alt="Login" height="240" width="300">--%>
<%--    </div>--%>

    <div class="UserName">
        <%--@declare id="username"--%><%--@declare id="password"--%>
        <label for="UserName"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>
    </div>
    <div class="password-field">
        <label for="Password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

    </div>
    <div class="BUTTON">
        <input type="submit" value="Login"/>
    </div>
    <div class="statement">
        <label>
            <input type="checkbox" checked="checked" name="remember"> Remember me

        </label>

    </div>


</form>
</body>
</html>