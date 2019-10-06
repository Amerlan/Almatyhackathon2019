<%@ page import="java.io.File" %>
<%@ page import="com.controller.Converter" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Kazhi Berik
  Date: 06.10.2019
  Time: 7:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootst.." integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/p.." integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstr.." integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 250px;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>

    <title>Sergek</title>
</head>
<body>
<img src="\images\LOGO.png" alt="LOGO" align="right" width="800" height="600">
<div class="container">
    <form action="home" method="post">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <h3>Path where file is located:</h3>
            </div>
            <%ArrayList<String> files = Converter.listFilesOfFOlder(new File("D:\\OpenCode\\ABC")); %>
        <table>
            <tr>
                <th>
                    All Files
                </th>
            </tr>
            <%for (int i = 0; i < files.size(); i++) {%>

            <tr>
                <td>
                    <%=files.get(i)%>
                </td>
            </tr>
            <%}%>
        </table>
            <input type="text" class="form-control" placeholder="Path to file" name="path" list = "<data>">
            <datalist id = "<data>">
                <option value="data_0.json"></option>
                <option value="data_1.json"></option>
                <option value="data_2.json"></option>
                <option value="data_3.json"></option>
                <option value="data_4.json"></option>
                <option value="data_5.json"></option>
                <option value="data_6.json"></option>
                <option value="data_7.json"></option>
            </datalist>
        </div>
        <input type="submit" class="btn btn-primary" value="Send path">
    </form>
</div>
</body>
</html>
