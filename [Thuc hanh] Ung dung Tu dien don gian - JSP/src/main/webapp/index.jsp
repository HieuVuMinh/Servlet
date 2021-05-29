<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 5/29/2021
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Dictionary</title>
    <style>

      input{
        border-radius: 5px;
      }
    </style>
  </head>
  <body>
  <h1>VietNamese Dictionary</h1>
  <form method="post" action="dictionary.jsp">
    <input type="text" name="word" placeholder="Enter your word:">
    <input type="submit"  style="background-color: gray; box-shadow: red" name="submit" value="Search">
  </form>
  </body>
</html>
