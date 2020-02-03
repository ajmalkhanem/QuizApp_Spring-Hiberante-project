<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>

<div class="w3-content w3-padding-large w3-margin-top" id="portfolio" style="margin-top:2%;">



  <br>
  <form action="addquestionprocess" method="post">
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="text"  name="qcode" class="form-control" id="inputPassword3" placeholder="Question code">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-6">
    <textarea class="form-control" name="question" id="exampleFormControlTextarea1" rows="3" placeholder="Question"></textarea>    </div>
  </div>
  
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="text" name="correctanswer" class="form-control" id="inputPassword3" placeholder="Correct Answer">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="text" name="answer1" class="form-control" id="inputPassword3" placeholder="Answer">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="text" name="answer2" class="form-control" id="inputPassword3" placeholder="Answer">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="text" name="answer3" class="form-control" id="inputPassword3" placeholder="Answer">
    </div>
  </div>
  
  <div class="form-group row">
    <div class="col-sm-6">
<button type="submit" class="btn btn-info">Add</button>


    </div>
  </div>
  
  
</form>
  
  </div>
  
 


</body>
</html>