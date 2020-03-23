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
    <link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet"/>
<style>
    img {
        border-radius: 50%;
    }
</style>
</head>
<body onload='document.login.name.focus();'>

<div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Others/architecture.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
    <!-- Mask & flexbox options-->

    <div class="mask rgba-gradient align-items-center">
        <!-- Content -->

        <div class="container">
            <!--Grid row-->
            <div class="col-md-10 white-text text-center text-md-left mt-xl-5 mb-5 fadeInLeft" >
<%--                <div class="col-md-6 white-text text-center text-md-left mt-xl-5 mb-5 fadeInLeft" >--%>
            <div class="row">
                <div class="col-md-20 white-text text-center text-md-left mt-xl-5 mb-5 fadeInLeft" >
                <div class="col-md-10 white-text text-center text-md-left mt-xl-5 mb-5 fadeInLeft" >
                    <h1 class="h1-responsive font-weight-bold mt-sm-5">Login for Library</h1>
                    <hr class="hr-light">
                    <form action="/login" method="post">
                    <div class="form-group">
                        <%--@declare id="username"--%><label for="UserName"><b>Username</b></label>
                        <input type="text" class="form-control" placeholder="Enter Username" name="uname" required>
                    </div>
                    <div class="form-group">
                        <%--@declare id="password"--%><label for="Password"><b>Password</b></label>
                        <input type="password" class="form-control" placeholder="Enter Password" name="psw" required>
                    </div>

<%--                    <div class="form-group form-check">--%>
<%--                        <input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
<%--                        <label class="form-check-label" for="exampleCheck1">Check me out</label>--%>
<%--                    </div>--%>
                    <input type="submit" class="btn btn-primary" value="Login"/>
                    </form>
                </div>
<%--                <div class="col-md-10 col-xl-5 mt-xl-1 fadeInRight" ></div>--%>
<%--&lt;%&ndash;                <div class="col-md-6 col-xl-5 mt-xl-1 fadeInRight" ></div>&ndash;%&gt;--%>
                <div class="col-md-40 col-xl-5 mt-xl-1 fadeInRight" >
                    <img src="https://www.netclipart.com/pp/m/62-628190_clipart-of-avatar-single-person-user-and-man.png" alt=""  width="250" height="200" >

                </div>

            </div>
<%--                </div>--%>

        </div>

    </div>


</div>

</div>

</body>
</html>