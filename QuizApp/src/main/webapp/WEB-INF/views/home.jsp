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
<div style="padding:2%;">
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" href="login">
    <button type="button" class="btn btn-info">login</button>
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">
    <button type="button" class="btn btn-info">Register</button>
    </a>
  </li>
  
</ul></div>
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio" style="margin-top:2%;">

<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Register</a>
  </li>
  
  
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
  
  <br>
  <form action="registerprocess" method="post">
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="text"  name="firstname" class="form-control" id="inputPassword3" placeholder="FirstName">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="text" name="lastname" class="form-control" id="inputPassword3" placeholder="Lastname">
    </div>
  </div>
  
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="email" name="email" class="form-control" id="inputPassword3" placeholder="email">
    </div>
  </div>
  
  <div class="form-group row">
    <div class="col-sm-6">
      <input type="text" name="phone" class="form-control" id="inputPassword3" placeholder="Phone">
    </div>
  </div>
  
  <div class="form-group row">
    <div class="col-sm-6">
<button type="submit" class="btn btn-danger">Create</button>


    </div>
  </div>
  
  
</form>
  
  </div>
  
 


</div></div></body>
</html>