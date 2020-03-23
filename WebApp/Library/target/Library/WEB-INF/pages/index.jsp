<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>library</title>
    <style>
        body
        {
            background-image: url("./logo.jpg");
        }
        .navbar {
            width: 100%;
            background-color: darkslateblue;
            overflow: auto;
            padding: 12px;
            text-decoration: none;
            font-size: 17px;
            color: #f1f1f1;

        }

        .navbar a {
            color: #f1f1f1

        }

        .topic {
            font-style: italic;
            font-family: "Baskerville Old Face";
            font-size: xx-large;
        }

        .booklist {
            font-style: oblique;
            font-size: large;
        }

        .books {
            font-style: italic;
            font-size: medium;
        }
        .dropDownList{width: 600px}
    </style>
</head>
<body>

<p>
<div class="logo">
    <h1 class="topic" align="center">Library Management System</h1>
    ${welcomeMessage}</div>
</p>
<div class="navbar">
    <!--   <a href="Search">Search</a>-->

    <a href="login" >Add Book</a>
    <a href="index" >Log out</a>
</div>
<div class="booklist" align="center">
    Available Books :
    <br>
    <div class="books" align="center">
${msg}

</div>

</body>
</html>
