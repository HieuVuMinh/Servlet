<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 5/27/2021
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product Discount</title>
    <style>
      input{
        margin: 10px;
      }
      p{
        color: red;
      }
    </style>
  </head>
  <body>
  <h1>Product Discount Calculator</h1>
  <form action="/discount" method="post">
    <label>Mô Tả</label><br/>
    <p>Description should be "Máy tính" or "Điện thoại"</p>
    <input type="text" name="description" placeholder="Description"><br/>

    <label>Giá niêm yết của sản phẩm</label><br/>
    <input type="text" name="price" placeholder="List Price"><br/>

    <label> Tỷ lệ chiết khấu</label><br/>
    <input type="text" name="discount" placeholder="Discount Percent"><br/>

    <input type="submit" name="submit" value="Calculate Discount">
  </form>
  </body>
</html>
