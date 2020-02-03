<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
@import 'https://fonts.googleapis.com/css?family=Open+Sans|Quicksand:400,700';

/*--------------------
General Style
---------------------*/
*,
*::before,
*::after {
  box-sizing: border-box;
}

body,
html {
  height: 100%;
  width:100%;
  font-family: 'Quicksand', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

body {
  background: rgba(30,29,31,1);
background: -moz-linear-gradient(-45deg, rgba(30,29,31,1) 0%, rgba(223,64,90,1) 100%);
background: -webkit-gradient(left top, right bottom, color-stop(0%, rgba(30,29,31,1)), color-stop(100%, rgba(223,64,90,1)));
background: -webkit-linear-gradient(-45deg, rgba(30,29,31,1) 0%, rgba(223,64,90,1) 100%);
background: -o-linear-gradient(-45deg, rgba(30,29,31,1) 0%, rgba(223,64,90,1) 100%);
background: -ms-linear-gradient(-45deg, rgba(30,29,31,1) 0%, rgba(223,64,90,1) 100%);
background: linear-gradient(135deg, rgba(30,29,31,1) 0%, rgba(223,64,90,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1e1d1f', endColorstr='#df405a', GradientType=1 );
}

/*--------------------
Text
---------------------*/

h2, h3 {
  font-size: 16px;
    letter-spacing: -1px;
  line-height: 20px;
}

h2 {
    color: #747474;
    text-align: center;
}

h3 {
    color: #032942;
    text-align: right;
}

/*--------------------
Icons
---------------------*/


/*--------------------
Login Box
---------------------*/

.box {
  width: 330px;
  position: absolute;
  top: 50%;
  left: 50%;
  
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.box-form {
  width: 320px;
  position: relative;
  z-index: 1;
}

.box-login-tab {
    width: 50%;
    height: 40px;
    background: #fdfdfd;
    position: relative;
    float: left;
    z-index: 1;
  
  -webkit-border-radius: 6px 6px 0 0;
     -moz-border-radius: 6px 6px 0 0;
          border-radius: 6px 6px 0 0;
  
    -webkit-transform: perspective(5px) rotateX(0.93deg) translateZ(-1px);
            transform: perspective(5px) rotateX(0.93deg) translateZ(-1px);
    -webkit-transform-origin: 0 0;
            transform-origin: 0 0;
    -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
    
    -webkit-box-shadow: 15px -15px 30px rgba(0,0,0,0.32);
     -moz-box-shadow: 15px -15px 30px rgba(0,0,0,0.32);
          box-shadow: 15px -15px 30px rgba(0,0,0,0.32);
}

.box-login-title {
    width: 35%;
    height: 40px;
    position: absolute;
    float: left;
    z-index: 2;
}

.box-login {
  position: relative;
  top: -4px;
  width: 320px;
  background: #fdfdfd;
  text-align: center;
  overflow: hidden;
  z-index: 2;
  
  -webkit-border-top-right-radius: 6px;
  -webkit-border-bottom-left-radius: 6px;
  -webkit-border-bottom-right-radius: 6px;
  -moz-border-radius-topright: 6px;
  -moz-border-radius-bottomleft: 6px;
  -moz-border-radius-bottomright: 6px;
   border-top-right-radius: 6px;
   border-bottom-left-radius: 6px;
   border-bottom-right-radius: 6px;
  
  -webkit-box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
     -moz-box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
          box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
}

.box-info {
    width: 260px;
    top: 60px;
  position: absolute;
    right: -5px;
    padding: 15px 15px 15px 30px;
    background-color: rgba(255,255,255,0.6);
    border: 1px solid rgba(255,255,255,0.2);
    z-index: 0;
    
    -webkit-border-radius: 6px;
     -moz-border-radius: 6px;
          border-radius: 6px;
    
    -webkit-box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
    -moz-box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
    box-shadow: 15px 30px 30px rgba(0,0,0,0.32);
}

.line-wh {
    width: 100%;
  height: 1px;
  top: 0px;
  margin: 12px auto;
    position: relative;
    border-top: 1px solid rgba(255,255,255,0.3);
}

/*--------------------
Form
---------------------*/

a { text-decoration: none; }

button:focus { outline:0; }

.b {
    height: 24px;
    line-height: 24px;
    background-color: transparent;
  border: none;
  cursor: pointer;
}

.b-form {
    opacity: 0.5;
    margin: 10px 20px;
  float: right;
}

.b-info {
  opacity: 0.5;
  float: left;
}

.b-form:hover, 
.b-info:hover {
  opacity: 1;
}

.b-support, .b-cta {
    width: 100%;
    padding: 0px 15px;
  font-family: 'Quicksand', sans-serif;
  font-weight: 700;
  letter-spacing: -1px;
  font-size: 16px;
  line-height: 32px;
  cursor: pointer;
    
  -webkit-border-radius: 16px;
     -moz-border-radius: 16px;
          border-radius: 16px;
}

.b-support {
  border: #87314e 1px solid;
  background-color: transparent;
  color: #87314e;
  margin: 6px 0;
}

.b-cta {
  border: #df405a 1px solid;
  background-color: #df405a;
  color: #fff;
}

.b-support:hover, .b-cta:hover {
  color: #fff;
    background-color: #87314e;
    border: #87314e 1px solid;
}

.fieldset-body {
    display: table;
}

.fieldset-body p {
    width: 100%;
    display: inline-table;
    padding: 5px 20px;
    margin-bottom:2px;
}

label {
    float: left;
  width: 100%;
    top: 0px;
    color: #032942;
    font-size: 13px;
    font-weight: 700;
    text-align: left;
    line-height: 1.5;
}

label.checkbox {
    float: left;
  padding: 5px 20px;
    line-height: 1.7;
}

input[type=text],
input[type=password] {
    width: 100%;
    height: 32px;
    padding: 0px 10px;
    background-color: rgba(0,0,0,0.03);
    border: none;
    display: inline;
    color: #303030;
    font-size: 16px;
    font-weight: 400;
    float: left;
    
    -webkit-box-shadow: inset 1px 1px 0px rgba(0,0,0,0.05), 1px 1px 0px rgba(255,255,255,1);
    -moz-box-shadow: inset 1px 1px 0px rgba(0,0,0,0.05), 1px 1px 0px rgba(255,255,255,1);
    box-shadow: inset 1px 1px 0px rgba(0,0,0,0.05), 1px 1px 0px rgba(255,255,255,1);
}

input[type=text]:focus,
input[type=password]:focus {
    background-color: #f8f8c6;
    outline: none;
}

input[type=submit]  {
  width: 100%;
  height: 48px;
  margin-top: 24px;
  padding: 0px 20px;
  font-family: 'Quicksand', sans-serif;
    font-weight: 700;
    font-size: 18px;
    color: #fff;
  line-height: 40px;
  text-align: center;
  background-color: #87314e;
    border: 1px #87314e solid;
    opacity: 1;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #df405a;
  border: 1px #df405a solid;
}

input[type=submit]:focus {
    outline: none;
}

p.field span.i {
    width: 24px;
  height: 24px;
  float: right;
  position: relative;
  margin-top: -26px;
  right: 2px;
  z-index: 2;
  display: none;
            
  -webkit-animation: bounceIn 0.6s linear;
     -moz-animation: bounceIn 0.6s linear;
       -o-animation: bounceIn 0.6s linear;
          animation: bounceIn 0.6s linear;
}

/*--------------------
Transitions
---------------------*/

.box-form, .box-info, .b, .b-support, .b-cta,
input[type=submit], p.field span.i {
    
    -webkit-transition: all 0.3s;
     -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
       -o-transition: all 0.3s;
          transition: all 0.3s;
}

/*--------------------
Credits
---------------------*/

.icon-credits {
  width: 100%;
  position: absolute;
  bottom: 4px;
  font-family:'Open Sans', 'Helvetica Neue', Helvetica, sans-serif;
  font-size: 12px;
  color: rgba(255,255,255,0.1);
  text-align: center;
  z-index: -1;
}

.icon-credits a {
  text-decoration: none;
  color: rgba(255,255,255,0.2);
}
</style>
<script>

$(document).ready(function() {
    $("#do_login").click(function() { 
       closeLoginInfo();
       $(this).parent().find('span').css("display","none");
       $(this).parent().find('span').removeClass("i-save");
       $(this).parent().find('span').removeClass("i-warning");
       $(this).parent().find('span').removeClass("i-close");
       
        var proceed = true;
        $("#login_form input").each(function(){
            
            if(!$.trim($(this).val())){
                $(this).parent().find('span').addClass("i-warning");
                $(this).parent().find('span').css("display","block");  
                proceed = false;
            }
        });
       
        if(proceed) //everything looks good! proceed...
        {
            $(this).parent().find('span').addClass("i-save");
            $(this).parent().find('span').css("display","block");
        }
    });
    
    //reset previously results and hide all message on .keyup()
    $("#login_form input").keyup(function() { 
        $(this).parent().find('span').css("display","none");
    });
 
  openLoginInfo();
  setTimeout(closeLoginInfo, 1000);
});




$(window).on('resize', function(){
      closeLoginInfo();
});
</script>
<title>Insert title here</title>
</head>
<body>
<div class='box'>
  <div class='box-form'>
    <div class='box-login-tab'></div>
    <div class='box-login-title'>
      <div class='i i-login'></div><h2>RESET</h2>
    </div>
    <div class='box-login'>
    <form action="resetprocess" method="post">
      <div class='fieldset-body' id='login_form'>
        <input type="hidden" name="actualuser" value="${reg.getEmail()}">
            <p class='field'>
          <label for='user'>Email</label>
          <input type="text" id='user' name="newpassword" title='Username' />
          <span id='valida' class='i i-warning'></span>
        </p>
          <p class='field'>
          <label for='pass'>Confirm Password</label>
          <input type='password' id='confirmpassword' name='confirmpassword' title='Password' />
          <span id='valida' class='i i-close'></span>
        </p>

          

            <input type='submit' id='do_login' value='RESET' title='Get Started' />
      </div></form>
    </div>
  </div>
  
</div>


 <div class='icon-credits'>Icons made by <a href="http://www.freepik.com" title="Freepik">Freepik</a>, <a href="http://www.flaticon.com/authors/budi-tanrim" title="Budi Tanrim">Budi Tanrim</a> & <a href="http://www.flaticon.com/authors/nice-and-serious" title="Nice and Serious">Nice and Serious</a> from <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
  
</body>
</html>