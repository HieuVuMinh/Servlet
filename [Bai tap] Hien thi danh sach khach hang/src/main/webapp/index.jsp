<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 5/29/2021
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <style>
        /*CSS cho thanh search*/
        .box{
            width: 300px;
            height: 50px;
        }
        .box-1{
            width: 300px;
            vertical-align: middle;
            white-space: nowrap;
            position: relative;
        }
        .box-1 input#search1{
            width: 300px;
            height: 50px;
            background: #2b303b;
            border: none;
            font-size: 10pt;
            float: left;
            color: #63717f;
            padding-left: 25px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        body {
            font-size: 25px;
        }

        #container {
            width: 100%;
            height: 1500px;
            --borderWidth: 3px;
            position: relative;
            border-radius: var(--borderWidth);
        }

        #container:after {
            content: '';
            position: absolute;
            top: calc(-1 * var(--borderWidth));
            left: calc(-1 * var(--borderWidth));
            height: calc(100% + var(--borderWidth) * 2);
            width: calc(100% + var(--borderWidth) * 2);
            background: linear-gradient(60deg, #f79533, #f37055, #ef4e7b, #a166ab, #5073b8, #1098ad, #07b39b, #6fba82);
            border-radius: calc(2 * var(--borderWidth));
            z-index: -1;
            animation: animatedgradient 3s ease alternate infinite;
            background-size: 300% 300%;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        img {
            width: 100px;
            height: 100px;
        }

        .col-1 {
            width: 32%;
        }

        .col-2 {
            width: 20%;
        }

        .col-3 {
            width: 20%;
        }

        .col-4 {
            width: 20%;
        }

        [class*="col-"] {
            float: left;
            padding: 15px;
            justify-content: center;
        }
    </style>
</head>
<body>
<div id="container">
    <div id="title">
        <h1><b>Danh sách Khách Hàng</b></h1>
    </div>
    <form action="search.jsp" method="post">
        <div class="box">
            <div class="box-1">
                <span class="icon"><i class="fa fa-search"></i></span>
                <input type="search" name="search" id="search1" placeholder="Search..."/>
            </div>
        </div>
    </form>
    <div id="body">
        <div class="row">
            <div class="col-1">
                Tên
            </div>
            <div class="col-2">
                Ngày sinh
            </div>
            <div class="col-3">
                Địa chỉ
            </div>
            <div class="col-4">
                Ảnh
            </div>
        </div>
        <hr width="100%" align="center"/>
        <div class="row">
            <div class="col-1">
                Mai Văn Hoàn
            </div>
            <div class="col-2">
                1983-08-20
            </div>
            <div class="col-3">
                Hà Nội
            </div>
            <div class="col-4">
                <img src="./img/ernesto.jpg">
            </div>
        </div>
        <hr width="100%" align="center"/>
        <div class="row">
            <div class="col-1">
                Nguyễn Văn Nam
            </div>
            <div class="col-2">
                1983-08-21
            </div>
            <div class="col-3">
                Bắc Giang
            </div>
            <div class="col-4">
                <img src="./img/ernesto1.jpg">
            </div>
        </div>
        <hr width="100%" align="center"/>
        <div class="row">
            <div class="col-1">
                Nguyễn Thái Hòa
            </div>
            <div class="col-2">
                1983-08-22
            </div>
            <div class="col-3">
                Nam Định
            </div>
            <div class="col-4">
                <img src="./img/ernesto2.jpg">
            </div>
        </div>
        <hr width="100%" align="center"/>
        <div class="row">
            <div class="col-1">
                Trần Đăng Khoa
            </div>
            <div class="col-2">
                1983-08-24
            </div>
            <div class="col-3">
                Hà Tây
            </div>
            <div class="col-4">
                <img src="./img/ernesto3.jpg">
            </div>
        </div>
        <hr width="100%" align="center"/>
        <div class="row">
            <div class="col-1">
                Nguyễn Đình Thi
            </div>
            <div class="col-2">
                1983-08-26
            </div>
            <div class="col-3">
                Hà Nội
            </div>
            <div class="col-4">
                <img src="./img/ernesto4.jpg">
            </div>
        </div>
    </div>
</div>
</body>
</html>
