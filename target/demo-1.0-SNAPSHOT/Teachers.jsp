<%--
  Created by IntelliJ IDEA.
  User: sakila
  Date: 12/5/2022
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="style.css">
<body>

<div class="w3-container">
    <div class="w3-bar w3-light-grey">
        <div class="w3-left  w3-padding"><input type="text"> <input type="button" value="search"></div>
        <div class="w3-right  w3-padding"><input type="button" value="Log Out"></div>

        <a href="AddExam.jsp"><div class="w3-right  w3-padding"><input type="button" value="add New"></div></a>
    </div>
    <table class="w3-table-all w3-card-4" style="align-content:center">
        <thead class="table-primary">
        <tr>
            <th >Exam</th>
            <th>Last Updated</th>
            <th>Status </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>John</td>
            <td>Doe</td>
            <td>john@example.com</td>
        </tr>

        </tbody>
    </table>
</div>


</body>
</html>