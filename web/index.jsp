<%@ page import="com.datapack.Data" %>
<%@ page import="java.io.ByteArrayInputStream" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: Kazhi Berik
  Date: 06.10.2019
  Time: 7:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sergek</title>
    <%Data data = (Data)request.getAttribute("data");%>
    <style>
        .myButton {
            box-shadow:inset 0px 1px 0px 0px #0015ff;
            background:linear-gradient(to bottom, #ff00ff 5%, #555ce0 100%);
            background-color:#ff00ff;
            border-radius:42px;
            border:1px solid #ff00ff;
            display:inline-block;
            cursor:pointer;
            color:#ffffff;
            font-family:Arial;
            font-size:20px;
            font-weight:bold;
            padding:6px 24px;
            text-decoration:none;
            text-shadow:0px 3px 0px #ff00ff;
        }
        .myButton:hover {
            background:linear-gradient(to bottom, #555ce0 5%, #ff00ff 100%);
            background-color:#555ce0;
        }
        .myButton:active {
            position:relative;
            top:1px;
        }
    </style>
</head>
<body>
<img src="\images\LOGO.png" alt="logo" width="800" height="600" align="right">
<%
    ByteArrayInputStream bais = new ByteArrayInputStream(Base64.getDecoder().decode(data.getPicture()));
    BufferedImage bufferedImage = ImageIO.read(bais);
    ImageIO.write(bufferedImage, "jpg", new File("C:\\Users\\Kazhi Berik\\Sergek\\web\\images\\carsv2.jpg"));
%>
<h3>Total count of cars: <%=data.getTotal()%>
</h3>
<br>
<h3>Picture image:</h3>
<img src="\images\carsv2.jpg" alt="Cars Detected" width="1080" height="720">

<!--<%//new File("C:\\Users\\Kazhi Berik\\Sergek\\web\\images\\carsv2.jpg").delete();%>-->

<a href="localhost:8080/" class="myButton">Back</a>
<!--
.myButton {
box-shadow:inset 0px 1px 0px 0px #0015ff;
background:linear-gradient(to bottom, #ff00ff 5%, #555ce0 100%);
background-color:#ff00ff;
border-radius:42px;
border:1px solid #ff00ff;
display:inline-block;
cursor:pointer;
color:#ffffff;
font-family:Arial;
font-size:20px;
font-weight:bold;
padding:6px 24px;
text-decoration:none;
text-shadow:0px 3px 0px #ff00ff;
}
.myButton:hover {
background:linear-gradient(to bottom, #555ce0 5%, #ff00ff 100%);
background-color:#555ce0;
}
.myButton:active {
position:relative;
top:1px;
}
-->
</body>
</html>
