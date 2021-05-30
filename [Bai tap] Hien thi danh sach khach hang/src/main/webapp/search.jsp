<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 5/30/2021
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

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
<%
    String name = request.getParameter("search");
    PrintWriter writer = response.getWriter();
%>
<%
    if (name.equals("MVH")) {
        writer.println("<div id=\"container\">\n" +
                "    <div id=\"title\">\n" +
                "        <h1><b>Danh sách Khách Hàng</b></h1>\n" +
                "    </div>\n" +
                "    <div id=\"body\">\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-1\">\n" +
                "                Tên\n" +
                "            </div>\n" +
                "            <div class=\"col-2\">\n" +
                "                Ngày sinh\n" +
                "            </div>\n" +
                "            <div class=\"col-3\">\n" +
                "                Địa chỉ\n" +
                "            </div>\n" +
                "            <div class=\"col-4\">\n" +
                "                Ảnh\n" +
                "            </div>\n" +
                "        </div>\n" +
                "        <hr width=\"100%\" align=\"center\"/>\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-1\">\n" +
                "                Mai Văn Hoàn\n" +
                "            </div>\n" +
                "            <div class=\"col-2\">\n" +
                "                1983-08-20\n" +
                "            </div>\n" +
                "            <div class=\"col-3\">\n" +
                "                Hà Nội\n" +
                "            </div>\n" +
                "            <div class=\"col-4\">\n" +
                "                <img src=\"./img/ernesto.jpg\">\n" +
                "            </div>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</div>");
    } else if (name.equals("NVN")) {
        writer.println("<div id=\"container\">\n" +
                "    <div id=\"title\">\n" +
                "        <h1><b>Danh sách Khách Hàng</b></h1>\n" +
                "    </div>\n" +
                "    <div id=\"body\">\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-1\">\n" +
                "                Tên\n" +
                "            </div>\n" +
                "            <div class=\"col-2\">\n" +
                "                Ngày sinh\n" +
                "            </div>\n" +
                "            <div class=\"col-3\">\n" +
                "                Địa chỉ\n" +
                "            </div>\n" +
                "            <div class=\"col-4\">\n" +
                "                Ảnh\n" +
                "            </div>\n" +
                "        </div>\n" +
                "        <hr width=\"100%\" align=\"center\"/>\n" +
                "        <div class=\"row\">\n" +
                "            <div class=\"col-1\">\n" +
                "                Nguyễn Văn Nam\n" +
                "            </div>\n" +
                "            <div class=\"col-2\">\n" +
                "                1983-08-21\n" +
                "            </div>\n" +
                "            <div class=\"col-3\">\n" +
                "                Bắc Giang\n" +
                "            </div>\n" +
                "            <div class=\"col-4\">\n" +
                "                <img src=\"./img/ernesto1.jpg\">\n" +
                "            </div>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</div>");
    }
%>
</body>
</html>
