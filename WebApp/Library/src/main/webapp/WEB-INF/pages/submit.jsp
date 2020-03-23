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
    <link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        body
        {
            background-image: url("https://s2.best-wallpaper.net/wallpaper/1920x1200/1703/Library-many-books_1920x1200.jpg");
        }
        .contentBlock {
            background-image: linear-gradient(linen, whitesmoke);
            border-style: solid;
            width: 100%;
            font-size: large;
            padding: 15px;
            margin-left: 830px;
            margin-top: 300px;
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
                                <input type="text" placeholder="Book Name" name="bookName" class="white-text form-control"  required>
                            </div>
                            <div class="AuthorName">
                                <label for="AuthorName"><b>Author Name</b></label>
                                <input type="text" placeholder="Author Name" name="author" class="white-text form-control"  required>
                            </div>
                            <div class="CopyCount">
                                <label for="CopyCount"><b>Copy Count</b></label>
                                <input type="number" placeholder="Copy Count (Number Only)" name="copyCount" class="white-text form-control"  required>
                            </div>
                            <div class="CoverImage">
                                <%--@declare id="coverimage"--%><label for="CoverImage"><b>Cover Image</b></label>
                                <input type="url" placeholder="Cover Image Link" name="coverImage"  class="white-text form-control"  required>
                            </div>
                            <div class="BUTTON">
                                <button onclick="window.location.href = '/submit';"  class="btn btn-outline-danger">submit</button>
                                <a href="${pageContext.request.contextPath}/index"  class="btn btn-outline-success">Back to Home Page</a>


                            </div>
                        </div>
                    </form>

</body>
</html>
