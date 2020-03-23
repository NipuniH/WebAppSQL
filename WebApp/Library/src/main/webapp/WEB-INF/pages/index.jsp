<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>library</title>
    <link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

<p>
<div class="logo">
    <img src="https://i.pinimg.com/originals/0a/cd/50/0acd5002683fbcf2b720004f201ee530.jpg" alt="logo" class="rounded mx-auto d-block" width="150px" height="80px">
    <h1 class="topic" align="center">Library Management System</h1>
    ${welcomeMessage}</div>
</p>

<div class="pos-f-t">
    <nav class="navbar navbar-light" style="background-color: lightblue;">
        <a href="login" class="btn btn-primary">Add Book</a>
        <div class="logout">
            <c:if test="${sessionLogged != null}">
            <form action="/logout" method="post">
                <input type="submit"  class="btn btn-outline-primary" value="Log Out"/>
            </form>
            </c:if>
    </nav>
<%--    <div class="collapse" id="navbarToggleExternalContent">--%>
<%--        <div class="bg-dark p-4">--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

</div>


<div class="booklist" align="center">
    Available Books :
    <br>
    <div class="books" align="center">
${msg}

</div>
</div>
</body>
</html>
