<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 5/27/2021
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>Demo login</title>
    <style>
      .login {
        height:180px; width:245px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
        border-radius: 5px;
      }
      .login input {
        padding:5px;
        margin:5px;
      }
    </style>
  </head>
  <body>
  <form method="post" action="/login">
    <div class="login">
      <h2>Login</h2>
      <input type="text" name="username" size="30" placeholder="username"/>
      <input type="password" name="password" size="30" placeholder="password"/>
      <input type="submit" value="Sign in"/>
    </div>
  </form>
  </body>
</html>
