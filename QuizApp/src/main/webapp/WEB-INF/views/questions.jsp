<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.List" %>
    <%@ page import="com.quizApp.model.Addquestion" %>
     <%@ page import="com.quizApp.model.Register" %>
    
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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<script>
$('#bt1').on('click', function(){
	 
    if( ! $(this).hasClass('paused') ) {
        $('.carousel').carousel('pause');
        $('#bt1').toggleClass('paused');
        $('#bt2').removeClass('fa-pause').addClass('fa-play');
        $(this).blur();
    }
    else {
        $('.carousel').carousel('cycle');
        $('#bt1').toggleClass('paused');
        $('#bt2').removeClass('fa-play').addClass('fa-pause');
        $(this).blur();
    }
 
});
</script>
<title>Insert title here</title>
</head>

<body class="w3-light-grey">

<!-- Page Container --><br><br><br>
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
      <div class="w3-black w3-text-grey w3-card-4">
       
        <div class="w3-container">
        <h2><i class="fa fa-briefcase fa-fw w3-margin-right w3-xxlarge w3-text-yellow"></i><label style="color:white;">QuizApp</label></h2>
          <p><i class="fa fa-user fa-fw w3-margin-right w3-large w3-text-red"></i><label style="color:yellow;">${reg.getFirstname()}</label></p>
         
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-red"></i><label style="color:yellow;">${reg.getEmail()}</label></p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-red"></i><label style="color:yellow;">${reg.getPhone()}</label></p>
          <hr>
          <p><i class="fa fa-logout fa-fw w3-margin-right w3-large w3-text-red"></i><label style="color:yellow;">${reg.getPhone()}</label></p>

          
          
         
          
          
          <br>
        </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    
     <div class="w3-twothird">
    
    
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
    
    
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-red"></i>Questions</h2>
        <div class="w3-container">
          
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio" style="margin-top:2%;">
${error}
<nav>

 <%List<Addquestion> qlist=(List)request.getAttribute("qs");
 
 
 int k=1;
 //int k=Integer.parseInt(request.getParameter("inc"));
 int j=k;%>
  
 
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
 
    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-1" role="tab" aria-controls="nav-home" aria-selected="true">Question code <%=qlist.get(j).getQcode() %></a>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
<form action="answercheckprocess" method="post">
  <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav-home-tab" style="padding:8%;">
  <input type="hidden" name="qcode" value=" <%=qlist.get(j).getQcode()%>">
  <div class="form-group row">
    <div class="col-sm-12">
    <input class="form-control" type="text" placeholder="<%=qlist.get(1).getQuestion() %>" readonly>    </div>
  </div>
  <div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios1" value=" <%=qlist.get(j).getAnswer2() %>">
  <label class="form-check-label" for="exampleRadios1">
   <%=qlist.get(1).getAnswer2() %>
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios2" value=" <%=qlist.get(j).getAnswer1() %>">
  <label class="form-check-label" for="exampleRadios2">
     <%=qlist.get(j).getAnswer1() %>
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios3" value="<%=qlist.get(j).getCorrectanswer() %>">
  <label class="form-check-label" for="exampleRadios3">
    <%=qlist.get(j).getCorrectanswer() %>
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios3" value=" <%=qlist.get(j).getAnswer3() %>">
  <label class="form-check-label" for="exampleRadios3">
    <%=qlist.get(j).getAnswer3() %>
  </label>
</div>

<div class="form-group-row">
<br>

  <input type="submit" class="btn btn-success" value="save">
 
 
</div>
  </div>
  </form>
</div>
</div>
        </div>
        
        
      </div>

    </div>
    <div class="carousel-item">
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-red"></i>Questions</h2>
        <div class="w3-container">
          
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio" style="margin-top:2%;">
${error}
<nav>

 <%List<Addquestion> qlist1=(List)request.getAttribute("qs");
 

 //int k=Integer.parseInt(request.getParameter("inc"));
 int j2=2;%>
  
  
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
 
    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-1" role="tab" aria-controls="nav-home" aria-selected="true">Question code <%=qlist1.get(j2).getQcode() %></a>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
<form action="answercheckprocess" method="post">
  <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav-home-tab" style="padding:8%;">
  <input type="hidden" name="qcode" value=" <%=qlist1.get(j2).getQcode()%>">
  <div class="form-group row">
    <div class="col-sm-12">
    <input class="form-control" type="text" placeholder="<%=qlist1.get(j2).getQuestion() %>" readonly>    </div>
  </div>
  <div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios1" value=" <%=qlist1.get(j2).getAnswer2() %>">
  <label class="form-check-label" for="exampleRadios1">
   <%=qlist1.get(j2).getAnswer2() %>
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios2" value=" <%=qlist1.get(j2).getAnswer1() %>">
  <label class="form-check-label" for="exampleRadios2">
     <%=qlist1.get(j2).getAnswer1() %>
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios3" value="<%=qlist1.get(j).getCorrectanswer() %>">
  <label class="form-check-label" for="exampleRadios3">
    <%=qlist1.get(j2).getCorrectanswer() %>
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios3" value=" <%=qlist1.get(j2).getAnswer3() %>">
  <label class="form-check-label" for="exampleRadios3">
    <%=qlist1.get(j2).getAnswer3() %>
  </label>
</div>

<div class="form-group-row">
<br>

  <input type="submit" class="btn btn-success" value="save">
 
 
</div>
  </div>
  </form>
</div>
</div>
        </div>
        
        
      </div>

    </div>
    <div class="carousel-item">
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-red"></i>Questions</h2>
        <div class="w3-container">
          
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio" style="margin-top:2%;">
${error}
<nav>
 <%List<Addquestion> qlist2=(List)request.getAttribute("qs");
 
 

 //int k=Integer.parseInt(request.getParameter("inc"));
 int j3=3;%>
  
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
 
    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-1" role="tab" aria-controls="nav-home" aria-selected="true">Question code <%=qlist2.get(j3).getQcode() %></a>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
<form action="answercheckprocess" method="post">
  <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav-home-tab" style="padding:8%;">
  <input type="hidden" name="qcode" value=" <%=qlist2.get(j3).getQcode()%>">
  <div class="form-group row">
    <div class="col-sm-12">
    <input class="form-control" type="text" placeholder="<%=qlist2.get(j3).getQuestion() %>" readonly>    </div>
  </div>
  <div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios1" value=" <%=qlist2.get(j3).getAnswer2() %>">
  <label class="form-check-label" for="exampleRadios1">
   <%=qlist2.get(j3).getAnswer2() %>
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios2" value=" <%=qlist2.get(j3).getAnswer1() %>">
  <label class="form-check-label" for="exampleRadios2">
     <%=qlist2.get(j3).getAnswer1() %>
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios3" value="<%=qlist2.get(j3).getCorrectanswer() %>">
  <label class="form-check-label" for="exampleRadios3">
    <%=qlist2.get(j3).getCorrectanswer() %>
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="canswer" id="exampleRadios3" value=" <%=qlist2.get(j).getAnswer3() %>">
  <label class="form-check-label" for="exampleRadios3">
    <%=qlist2.get(j3).getAnswer3() %>
  </label>
</div>

<div class="form-group-row">
<br>

  <input type="submit" class="btn btn-success" value="save">
 
 
</div>
  </div>
  </form>
  <form action="finalsubmit" method="post">
  <input type="hidden" name="name" value="${reg.getFirstname() }">
  <input type="submit" style="margin-left: 5%;" class="btn btn-light" value="Final Mark">
  </form>
</div>
</div>
        </div>
        
        
      </div>

    </div>
  </div>
  <button  id="bt1" class="carousel-control-prev btn btn-danger" style="margin-left:2%; top: 83%;height:5%;width:6%;" href="#carouselExampleFade" role="button" data-slide="prev">Prev</button>
    
   
  <button  class="carousel-control-next btn btn-danger" style="margin-right:2%; top: 83%;height:5%;width:6%;" href="#carouselExampleFade" role="button" data-slide="next">Next</button>
    
   <button id="bt2" class="btn btn-warning">Stop And Proceed</button>
    </div>
    
    
    
    
    
    
   
    
     
      

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>



</html>