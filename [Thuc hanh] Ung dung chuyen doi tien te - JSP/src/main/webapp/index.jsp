<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 5/28/2021
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
    <style>
      div{
        margin: 10px auto;
      }
      body{
        margin: auto;
      }
    </style>
  </head>
  <body>
  <h1><b>Currency Converter</b></h1>
  <form action="converter.jsp" method="post">
    <div>
      <label>Rate:</label><br/>
      <input type="text" name="rate" value="22000" placeholder="Rate">
    </div>
    <div>
      <label>USD:</label><br/>
      <input type="text" name="usd" value="0" placeholder="USD">
    </div>
    <div>
      <input type="submit" name="submit" value="Converter">
    </div>
  </form>


  </body>
</html>
