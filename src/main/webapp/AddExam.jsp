<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.exam" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: sakila
  Date: 12/12/2022
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<body>
<form method="post" action="Servlet_ExamTeachers" >


<div class="w3-container">
  <a> <i class="glyphicon glyphicon-home"></i><input class="w3-input " type="text" style="width:150px" placeholder="Exam name"></a>
  <p class="w3-large">Question List</p>
</div>



<div class="w3-row">
  <div class="w3-col w3-container m7 15 ">

    <!--this table and button-->

    <div class="w3-container">
      <div class="w3-bar w3-light-grey">

          <div class="w3-right  w3-padding"><button type="submit" name="action" value="Add">Add Question</button></div>


      </div>
      <table class="w3-table-all w3-card-4" style="align-content:center">
        <thead class="table-primary">
        <tr>
          <th >Question</th>
          <th>Answer</th>

        </tr>
        </thead>
        <tbody>

        <!--ArrayList Using-->
          <%
            List<exam>examList =(ArrayList<exam>)request.getAttribute("ExamData");
            if(examList==null)
            {

            }else {
              for (exam exam : examList) {
                out.println("<tr>");
                  out.println("<th rowspan=\"5\">"+exam.getQuestion()+"</th>");
                    out.println("<td>"+exam.getAnswer1()+"</td>");
                  out.println("</tr>");
                  out.println("<tr>");
                  out.println("<td>"+exam.getAnswer2()+"</td>");
                  out.println("</tr>");
                  out.println("<tr>");
                  out.println("<td>"+exam.getAnswer3()+"</td>");
                  out.println("</tr>");
                  out.println("<tr>");
                  out.println("<td>"+exam.getAnswer4()+"</td>");
                  out.println("</tr>");
                  out.println("<tr>");
                  out.println("<td>"+"Correct Answer:"+exam.getCorrectAnswer()+"</td>");
                  out.println("</tr>");


              }
            }
          %>

        </tbody>
      </table>
      <div class="w3-bar w3-light-grey">
        <form method="post" action="">
        <div class="w3-left  w3-padding"><input type="date" value="Exam Date Time"> </div>
        <div class="w3-left  w3-padding"><input type="date" value="Exam Date Time"> </div>
        <div class="w3-right  w3-padding"><input type="button" value="Published"></div>
        </form>

      </div>
    </div>



  </div>
  <div class="w3-col w3-container m4 13">





        <input class="w3-input w3-border" id="Qustion" name="Qustion" type="text" style="margin-top: 25px;" placeholder="Question name">

      <label>Answer List</label>
        <input class="w3-input w3-border"  id="Answer1" name="Answer1" type="text" placeholder="Answer 1">


        <input class="w3-input w3-border" id="Answer2"  name="Answer2" type="text" style="margin-top: 25px;" placeholder="Answer 2">

        <input class="w3-input w3-border"  id="Answer3" name="Answer3" type="text" style="margin-top: 25px;" placeholder="Answer 3">

        <input class="w3-input w3-border" id="Answer4" name="Answer4" type="text" style="margin-top: 25px;" placeholder="Answer 4">

        <input class="w3-input w3-border" id="CorrectAnswer" name="CorrectAnswer" type="text" style="margin-top: 25px;" placeholder="Correct Answer">


    <div class="w3-bar w3-light-grey">
        <div class="w3-right  w3-padding"><button type="submit" name="action" value="Save" >Save</button></div>


      </div>



  </div>
</div>
</form>
</body>
</html>

