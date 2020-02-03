<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


<style>
@media 
(-webkit-max-device-pixel-ratio: 2), 
(max-resolution: 192dpi) {
  .body-background {
    cursor: url(http://phmail.co/wp-content/uploads/2016/01/custom-cursor-2.png), auto;
  }
}

body {
  padding: 0;
  margin: 0;
}

.code-rerun {
  position: fixed;
  bottom: 25px;
  right: 25px;
  font-family: "sofia-pro-soft";
  font-size: 14px;
  color: #ffffff;
  padding: 8px 18px;
  background-color: rgba(0,0,0,0.15);
  border-radius: 4px;
  transition: all .4s;
  -webkit-transition: all .4s;
  cursor: pointer;
}

.code-rerun:hover {
  background-color: rgba(0,0,0,0.25);
}

.body-background {
  display: flex;
  float: left;
  width: 100vw;
  height: 100vh;
  background: linear-gradient(to bottom, #FFB853 0, #EE6C25 100%);
  align-items: center;
}

.modal-container {
  width: 420px;
  margin: 0 auto;
  background-color: transparent;
  border-radius: 4px;
  overflow: hidden;
  box-shadow: 0px 5px 0px rgba(0,0,0,0.15);
}

.title-bar {
  display: flex;
  width: 100%;
  background-color: #E98737;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  padding: 20px 30px 18px 30px;
  font-family: "sofia-pro-soft";
  font-size: 16px;
  color: #ffffff;
  text-shadow: 0px 1px rgba(0,0,0,0.15);
}

.title-bar .brand {
  margin-right: 12px;
}

.input-section {
  position: relative;
  background-color: #ffffff;
  padding: 12px 30px;
  overflow: hidden;
  transition: all .4s;
  -webkit-transition: all .4s;
}

.input-fields {
}

.input-fields.run-ani {
  animation: hiddeninput 1s forwards;
  -webkit-animation: hiddeninput 1s forwards;
}

input.login-field {
  height: 60px;
  width: 100%;
  border: 0px;
  border-bottom: 2px solid #e3e3e3;
  width: 100%;
  overflow: hidden;
  font-family: "sofia-pro-soft";
  font-size: 16px;
  color: #a3a3a3;
  text-indent: 15px;
  outline: none;
  transition: all .4s;
  -webkit-transition: all .4s;
}

input.login-field:focus {
  border-bottom-color: #a3a3a3;
}

input.login-field[type="text"]:-moz-placeholder, input.login-field[type="password"]:-moz-placeholder {
  color: #e3e3e3 !important;
}

input.login-field[type="text"]::-moz-placeholder, input.login-field[type="password"]::-moz-placeholder {
  color: #e3e3e3 !important;
}

input.login-field[type="text"]:-ms-input-placeholder, input.login-field[type="password"]:-ms-input-placeholder {
  color: #e3e3e3 !important;
}

input.login-field[type="text"]::-webkit-input-placeholder, input.login-field[type="password"]::-webkit-input-placeholder {
  color: #e3e3e3 !important;
}

.last-field {
  margin-bottom: 30px;
}

.submit-section {
}

.submit-section.run-ani {
  animation: hiddensubmit 1s forwards;
  -webkit-animation: hiddensubmit 1s forwards;
}

.forgot-pw {
  float: left;
  font-family: "sofia-pro-soft";
  font-size: 16px;
  color: #F6913F;
  line-height: 37px;
  cursor: pointer;
}

.forgot-pw:hover {
  color: #E98737;
  text-decoration: underline;
}

.submit-button.correct {
  float: right;
  height: 40px;
  padding: 0px 15px;
  border-radius: 4px;
  background-color: #F6913F;
  font-family: "sofia-pro-soft";
  font-size: 16px;
  line-height: 37px;
  color: #ffffff;
  margin-bottom: 18px;
  box-shadow: 0px 5px 0px rgba(0,0,0,0.10);
  transition: all .4s;
  -webkit-transition: all .4s;
}

.submit-button.correct:hover {
  background-color: #E98737;
}

.submit-button.incorrect {
  float: right;
  height: 40px;
  padding: 0px 15px;
  border-radius: 4px;
  background-color: #F6913F;
  font-family: "sofia-pro-soft";
  font-size: 16px;
  line-height: 37px;
  color: #ffffff;
  margin-bottom: 18px;
  cursor: pointer;
  box-shadow: 0px 5px 0px rgba(0,0,0,0.10);
  transition: all .4s;
  -webkit-transition: all .4s;
}

.submit-button:hover {
  box-shadow: 0px 3px 0px rgba(0,0,0,0.2);
}

#success-tick {
  display: block;
  position: absolute;
  height: 120px;
  width: 100px;
  margin: -60px auto 0px auto;
  top: 50%;
  left: 0;
  right: 0;
  background-color: #fff;
  opacity: 0;
  overflow: hidden;
}

#success-tick.run-ani {
  animation: successful 1s forwards;
  -webkit-animation: successful 1s forwards;
}

.success-graphic {
  height: 80px;
  width: 80px;
  margin: 0 auto;
}

span.success-text {
  position: absolute;
  margin: 0 auto;
  left: 0;
  right: 0;
  bottom: ;
  font-family: "sofia-pro-soft";
  font-size: 15px;
  color: #a3a3a3;
  text-align: center;
  opacity: 0;
}

span.success-text.run-ani {
  animation: logging 1s forwards;
  -webkit-animation: logging 1s forwards;
}

/*----Animations----*/


@-webkit-keyframes hiddeninput {
    0%   { transform: scale(1); }
    25%  { transform: scale(1.07); opacity: 1; }
    75%  {  }
    100% { transform: scale(0); opacity: 0; }
}

@keyframes hiddeninput {
    0%   { transform: scale(1); }
    25%  { transform: scale(1.07); opacity: 1; }
    75%  {  }
    100% { transform: scale(0); opacity: 0; }
}

@-webkit-keyframes hiddensubmit {
    0%   { transform: scale(1); }
    25%  { transform: scale(1.07); opacity: 1; }
    75%  { transform: scale(0); opacity: 0; }
    100% { transform: scale(0); opacity: 0; }
}

@keyframes hiddensubmit {
    0%   { transform: scale(1); }
    25%  { transform: scale(1.07); opacity: 1; }
    75%  { transform: scale(0); opacity: 0; }
    100% { transform: scale(0); opacity: 0; }
}

@-webkit-keyframes successful {
    0%     { transform: scale(0); opacity: 0; }
    25%    { transform: scale(1.12); opacity: 1; }
    75%    { transform: scale(1); opacity: 1; }
    100%   { transform: scale(1); opacity: 1; }
}

@keyframes successful {
    0%     { transform: scale(0); opacity: 0; }
    25%    { transform: scale(1.12); opacity: 1; }
    75%    { transform: scale(1); opacity: 1; }
    100%   { transform: scale(1); opacity: 1; }
}

@-webkit-keyframes logging {
    0%   { transform: translate3d(0px,20px,0px); opacity: 0; }
    75%  { transform: translate3d(0px,10px,0px); opacity: 1; }
    100% { transform: translate3d(0px,10px,0px); opacity: 1; }
}

@keyframes logging {
    0%   { transform: translate3d(0px,20px,0px); opacity: 0; }
    75%  { transform: translate3d(0px,10px,0px); opacity: 1; }
    100% { transform: translate3d(0px,10px,0px); opacity: 1; }
}
</style>
<script type="text/javascript">

$(document).ready(function(){
    $(".submit-button.correct").click(function(){
        $(".input-fields").addClass("run-ani");
    });
  
    $(".submit-button.correct").click(function(){
        setTimeout(function(){
       $(".submit-section").addClass("run-ani");
   }, 300);
    });
  
    $(".submit-button.correct").click(function(){
        setTimeout(function(){
       $("#success-tick").addClass("run-ani");
   }, 1100);
    });
  
    $(".submit-button.correct").click(function(){
        setTimeout(function(){
       $("span.success-text").addClass("run-ani");
   }, 1300);
    });

    $(".code-rerun").click(function(){
        $(".input-fields, .submit-section").removeClass("run-ani");
    });
  
    $(".code-rerun").click(function(){
        $("#success-tick").removeClass("run-ani");
    });
  
    $(".code-rerun").click(function(){
        $("span.success-text").removeClass("run-ani");
    });
});
</script>

<title>Insert title here</title>
</head>
<body>
<div class="body-background">
  <div class="modal-container">
  <form action="firstlogin" method="post">
    <div class="title-bar">
         Log In To Your Mail Account
         <br>
         ${error}
    </div>
    <div class="input-section">
      <div id="success-tick">
        <div class="success-graphic"><svg version="1.1" id="success-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
     y="0px" width="80px" height="80px" viewBox="0 0 80 80" enable-background="new 0 0 80 80" xml:space="preserve">
<g id="circle">
    <path fill="#79B77E" d="M40,2c20.953,0,38,17.047,38,38S60.953,78,40,78S2,60.953,2,40S19.047,2,40,2 M40,0C17.909,0,0,17.909,0,40
        s17.909,40,40,40s40-17.909,40-40S62.091,0,40,0L40,0z"/>
</g>
<polyline id="tick" fill="none" stroke="#79B77E" stroke-width="9" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" points="
    56,29.469 34.618,50.851 24,40.234 "/>
</svg></div>
        <span class="success-text">Logging In...</span>
      </div>
      <div class="input-fields">
        <input type="email" name="username1" class="login-field" placeholder="Your Username">
        <input type="password" name="password1" class="login-field last-field" placeholder="Your Password">
      </div>
      <div class="submit-section">
        
         <button type="submit" class="btn btn-warning submit-button correct">login</button>

       
      </div>
    </div></form>
  </div>
</div>
<div class="code-rerun">Rerun</div>
</body>
</html>