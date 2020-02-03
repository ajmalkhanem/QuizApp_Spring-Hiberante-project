<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
    <%@ page import="com.quizApp.model.ValidateAnswer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style>
* {
  box-sizing: border-box;
  font-family: sans-serif;
}
.login {
  width: 300px;
  height: 450px;
  border: 1px solid #CCC;
  background-size: cover;
  background-color:black;
  margin: 30px auto;
  border-radius: 3px;
}
.login .form {
  width: 100%;
  height: 100%;
  padding: 15px 20px;;
}
.login .form h2 {
  color: #FFF;
  text-align: center;
  font-weight: normal;
  font-size: 18px;
  margin-top: 60px;
  margin-bottom: 80px;
}
.login .form h4 {
  color: white;
  text-align: center;
  font-weight: normal;
  font-size: 18px;
  margin-top: 60px;
  margin-bottom: 80px;
}

</style>

<title>Insert title here</title>
</head>
<body>
<div class="login">
  <div class="form">
   
 <%List<ValidateAnswer> qlist=(List)request.getAttribute("qs");
 int i,sum=0;String nam="";
 for(i=0;i<qlist.size();i++)
 {%>
 <%=nam=qlist.get(i).getUid() %>
  <%=sum=sum+qlist.get(i).getMark() %>
  
    <%} %><h2>Thanks <%=nam %></h2>
    <%if(sum>4) 
    {%>
   <h4><strong>You awarded <%=sum %> coins</strong></h4>
   <h4><strong>You can do more</strong></h4><%} %>
   
    <%if(sum<4) 
    {%>
   <h4><strong>You awarded <%=sum %> coins</strong></h4>
   <h4><strong>Need improvement</strong></h4><%} %>
   
   <%if(sum >=10) 
    {%>
   <h4><strong>You awarded <%=sum %> coins</strong></h4>
   <h4><strong>Keep it up</strong></h4><%} %>
  
  </div>
</div>
</body>
</html>