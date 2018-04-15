<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/camera.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/button.css">
<link rel="stylesheet" href="css/logout.css">
<link rel="stylesheet" href="css/but.css">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/signup.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/camera.js"></script>
<script src="js/owl.carousel.js"></script> 
<!--[if (gt IE 9)|!(IE)]><!-->
<script src="js/jquery.mobile.customized.min.js"></script>
<!--<![endif]-->


    <style>
    body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}
        


/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
    
.field_set {
        border: 1px solid #ccc;
    }
input[type="radio"]{
    -webkit-appearance: radio;
}
        input[type="checkbox"] {
            -webkit-appearance: checkbox;
        }
        container1 {
    padding: 10%;
    margin-top:-6%;
    margin-left: 20%;
    /* padding: 16px; */
    opacity: 1;
    width: auto;}
 
 
 
/* The Modal (background) */
.modal1 {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}
 
/* Modal Content/Box */
.modal-content1 {
    background-color: #fefefe;
    margin: 20% auto 15% auto;
    border: 1px solid #888;
    width: 50%;
    height: 20%; 
    </style>
    <script>


 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  

  $('#camera_wrap').camera({
    loader: false,
    pagination: false ,
    minHeight: '400',
    thumbnails: false,
    height: '38.07291666666667%',
    caption: false,
    navigation: true,
    fx: 'mosaic'
  });

  $("#owl").owlCarousel({
    items : 3, //10 items above 1000px browser width
    itemsDesktop : [995,1], //5 items between 1000px and 901px
    itemsDesktopSmall : [767, 1], // betweem 900px and 601px
    itemsTablet: [700, 1], //2 items between 600 and 0
    itemsMobile : [479, 1], // itemsMobile disabled - inherit from itemsTablet option
    navigation : true,
    pagination :  false
  }); 
 }); 
        
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var modal1 = document.getElementById('id02');

window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
 
$(document).ready(function () {
    $('#modalClose').click(function (){
               window.setTimeout(function () {
                 $('#id02').modal('hide');
               }, 5000);
             });
         });
function myFunction() {
    var x = document.getElementById("myEmail").pattern;
    document.getElementById("demo").innerHTML = x;
}
//var modal1 = document.getElementById('id02');
 
// When the user clicks anywhere outside of the modal, close it
//window.onclick = function(event) {
  //  if (event.target == modal1) {
    //    modal.style.display = "none";
    //}
//}
</script>
    
<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>

<body class="page1" id="top">
<!--==============================
              header
=================================-->	
 
    
<header>
  <div class="container_12" style="margin-bottom:-100px">
    <div class="grid_12" style="margin-top: 40px;">
  
      <h1 class="">
      <a href="index.jsp" style="font-size: 75%;">
          WeCare
          </a>
      </h1>  
     </div>
    </div>
    
    </header>
    <form action="../loginController" method="GET">
   	<input class="logout" type="submit"  value="Logout"/>
	</form>
  
<div id="id02" class="modal1">
 
 
  <div class="modal-content1 animate" align="center" >
 
    <div class="container1">
      
       <button onclick="document.getElementById('id01').style.display='block'" style="width: 33% ;" >Organization</button>
        <button onclick="document.getElementById('id03').style.display='block'"style="width:33%" >User</button>
        
    </div>
 
 
</div>
</div>
<div id="id04" class="modal1" align="center" padding="200px">
 
 
	
 <div class="modal-content1 animate" >
 
    <div class="container1">
      
    
	
        <%-- <form action="<%=request.getContextPath() %>/user/login.jsp">
       <!-- <input type="submit" class="xyz" value="SignUp"/> -->
       <button  style="width: 33% ;" >Organization</button>
       <input type="hidden" name="login" value="org">
       </form>
       
       <form action="<%=request.getContextPath() %>/user/login.jsp">
       <!-- <input type="submit" class="xyz" value="SignUp"/> -->
       <button  style="width: 33% ;" >User</button>
       <input type="hidden" name="login" value="usr">
       </form> 
  --%>
        
    </div>
 
 
</div>
  
</div>
</div>
   

<div id="id01" class="modal" >
  
  <form class="modal-content animate" action="../insertController" method="post">
<!--
    <div class="imgcontainer" >
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img_avatar2.png" alt="Avatar" class="avatar">
    </div>
-->

    <div class="container" >
      <label for="uname" style="color:black"><b>Organization Name</b></label>
      <input style="color:black" type="text" placeholder="Enter Username" name="name" required>
        
        <label style="color:black" for="city"><b>City</b></label>
        <input style="color:black" type="text" placeholder="City" name="city" required>
        
        <label style="color:black" for="State"><b>State</b></label>
        <input type="text" placeholder="State" name="state" required>
        
         <fieldset style="color:black" class="field_set"><Legend><b> Type</b></Legend>
            
            
                    <label><INPUT style="color:black" TYPE="RADIO" NAME="type" Value="Profit">Profit  </INPUT></label>
                    <label><INPUT style="color:black"TYPE="RADIO" NAME="type" VALUE="Non-Profit">Non-Profit   </INPUT></label>
                    <label><INPUT style="color:black" TYPE="RADIO" NAME="type" VALUE="Government">Government</INPUT></label>
        	
       
        </fieldset>
       <br>         
      <label  style="color:black" for="ein"><b>EIN</b></label>
        <input style="color:black" type="text" placeholder="Enter EIN" name="EIN" required>
        
        <label style="color:black" for="url"><b>Website Url</b></label>
      <input  style="color:black" type="text" placeholder="Enter url" name="URL" pattern="[a-z0-9]+\.[a-z]{2,3}$" title="invalid URL" required>
        
        <label style="color:black" for="number"><b>Contact Number</b></label>
      <input style="color:black" type="text" placeholder="Enter Contact details" name="phone_no" pattern="[0-9]{11}" title="Enter valid Phone Number" required>
        
        <label style="color:black" for="email"><b>Email</b></label>
      <input style="color:black" type="text" placeholder="Enter Email" name="email_id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Invalid email address." required>
        
        <label style="color:black" for="psw"><b>Password</b></label>
      <input style="color:black" type="password" placeholder="Enter Password" name="password" required>
        
        
        
      <button  type="submit">Register</button>
      <label style="color:black" >
        <input style="color:black" type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span style="color:black" class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
<div id="id03" class="modal">
  
  <form class="modal-content animate" action="../userController" method="post">
 
    <div class="container">
      <label for="uname" style="color:black"><b>User Name</b></label>
      <input style="color:black" type="text" placeholder="Enter Username" name="user_name" required>
        
        <label style="color:black" for="city"><b>City</b></label>
        <input style="color:black" type="text" placeholder="City" name="user_city" required>
        
        <label style="color:black" for="State"><b>State</b></label>
        <input type="text" placeholder="State" name="user_state" required>
        
        <label style="color:black" for="number"><b>Contact Number</b></label>
      <input style="color:black" type="text" placeholder="Enter Contact details" pattern="[0-9]{11}" name="user_number" title="Enter valid Phone Number" required>
        
        <label style="color:black" id="myEmail" for="email"><b>Email</b></label>
      <input style="color:black" type="text" placeholder="Enter Email" name="user_email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Invalid email address." required>
        
        <label style="color:black" for="psw"><b>Password</b></label>
      <input style="color:black" type="password" placeholder="Enter Password" name="user_psw" required>
        
        
        
      <button  type="submit" onclick="myFunction()">Register</button>
      <label style="color:black" >
        <input style="color:black" type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>
 
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
      <span style="color:black" class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<div class="clear"></div>
 
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container_12">
        <div class="grid_12">    
        <!--
              
          <div class="navigation">
            <nav>
              <ul class="sf-menu">
               <li class="current"><a href="index.jsp">Home</a></li>
               <li><a href="about.jsp">About</a></li>
               <li><a href="mission.jsp">Mission</a></li>
               <li><a href="membership.jsp">Membership</a></li>
               <li><a href="contacts.jsp">Contacts</a></li>
             </ul>
            </nav>
            <div class="clear"></div>
          </div>    
          -->   
         <div class="clear"></div>  
     </div> 
     <div class="clear"></div>
    </div> 
  </section>
</header>
<section class="slider_wrapper">
  <div id="camera_wrap" class="">
    <div data-src="images/slide1.jpg"></div>
    <div data-src="images/slide2.jpg"></div>  
    <div data-src="images/slide3.jpg"></div>
    <div data-src="images/slide4.jpg"></div> 
    <div data-src="images/slide5.jpg"></div> 
  </div>  
</section> 
<!--=====================
          Content
======================-->
<section id="content">
  <div class="container_12" >
    <div class="grid_4" style="margin-top:40px">
      <div class="banner">
        <a href="../userdonationController" class="banner_title">Make <br>
Donations</a>
        <div class="maxheight"></div>
      </div>
    </div>
    <div class="grid_4" style="margin-top:40px">
      <div class="banner">
        <a href="../volunteerController" class="banner_title">Upcoming <br>
Events</a>
        <div class="maxheight"><img src="" alt=""></div>
      </div>
    </div>
    <div class="grid_4" style="margin-top:40px">
      <div class="banner">
        <a href="#" class="banner_title">Add <br>
Things</a>
        <div class="maxheight"><img src="" alt=""></div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <!-- <article class="block-1">
    <div class="container_12">
      <div class="grid_12">
        <h2>Meet Our Partners in Sharing	 Love</h2>
      </div>
      <div class="grid_4">
        <img src="images/page1_img1.jpg" alt="">
        <div class="extra_wrapper">
          <div class="block-1_title"><a href="#">Mark Johnson</a></div>
          Labcd
        </div>
      </div>
      <div class="grid_4">
        <img src="images/page1_img2.jpg" alt="">
        <div class="extra_wrapper">
          <div class="block-1_title"><a href="#">Sam Rock</a></div>
          abcd
        </div>

      </div>
      <div class="grid_4">
        <img src="images/page1_img3.jpg" alt="">
        <div class="extra_wrapper">
          <div class="block-1_title"><a href="#">Patrick Pool</a></div>
          abcd
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </article>
  <div class="container_12">
    <div class="grid_6">
      <div class="block-2">
        <img src="images/b_icon1.png" alt="">
        <div class="text1"><a href="#">I’m New Here</a></div>
        abcd
      </div>
    </div>
    <div class="grid_6">
      <div class="block-2">
        <img src="images/b_icon2.png" alt="">
        <div class="text1"><a href="#">Care Ministries</a></div>
        abcd
      </div>
    </div>
    <div class="grid_6">
      <div class="block-2">
        <img src="images/b_icon3.png" alt="">
        <div class="text1"><a href="#">Prayer Request</a></div>
        Hemus at magna non nunc tristique rhoncus. Aliquam nibh antegestas id dictum a, commodo luctus libero. Praesent faucibus malesuada faucibus. Donec laoreet metus id laoreeti 
      </div>
    </div>
    <div class="grid_6">
      <div class="block-2">
        <img src="images/b_icon4.png" alt="">
        <div class="text1"><a href="#">Audio Podcasts</a></div>
        Emus at magna non nunc tristique rhoncus. Aliquam nibh antegestas id dictum a, commodo luctus libero. Praesent faucibus malesuada faucibus. Donec laoreet metus id laoree 
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="clear sep-1"></div>
  <article class="carousel_wrapper">
    <div class="container_12">
      <div class="grid_12">
        <div id="owl">
          <div class="item">
            <div class="banner">
              <div class="banner_title">July 25</div>
              <p>The detailed description of the <a href="http://blog.templatemonster.com/free-website-templates/" rel="nofollow" class="color2">freebie</a> is published on the blog. <br><br>
              Find <a href="http://www.templatemonster.com/properties/topic/society-people/" rel="nofollow" class="color2">society &amp; people themes</a> in the same name category at TemplateMonster.com</p>
              <a href="#" class="owl_link">Read More</a>
            </div>
          </div>
          <div class="item">
            <div class="banner">
              <div class="banner_title">August 17</div>
              
              <p>Horem ipsum dolor sit tetur dipiscing elit. In mollis erat mattis neque facilisis, sit wertolio mero dasererat rutrumrem ipsum dolor sit tetur dipiscing elit. In mollis erat mattis neque facilisis</p>
              <a href="#" class="owl_link">Read More</a>
            </div>
          </div>
          <div class="item">
            <div class="banner">
              <div class="banner_title">September 10</div>
              <p>Jorem ipsum dolor sit tetur dipiscing elit. In mollis erat mattis neque facilisis, sit wertolio mero dasererat rutrumrem ipsum dolor sit tetur dipiscing elit. In mollis erat mattis neque facilisise </p>
              <a href="#" class="owl_link">Read More</a>
            </div>
          </div>
          <div class="item">
            <div class="banner">
              <div class="banner_title">July 25</div>
              <p>The detailed description of the <a href="http://blog.templatemonster.com/free-website-templates/" rel="nofollow" class="color2">freebie</a> is published on the blog. <br><br>
              Find <a href="http://www.templatemonster.com/properties/topic/society-people/" rel="nofollow" class="color2">society &amp; people themes</a> in the same name category at TemplateMonster.com</p>
              <a href="#" class="owl_link">Read More</a>
            </div>
          </div>
          <div class="item">
            <div class="banner">
              <div class="banner_title">August 17</div>
              
              <p>Horem ipsum dolor sit tetur dipiscing elit. In mollis erat mattis neque facilisis, sit wertolio mero dasererat rutrumrem ipsum dolor sit tetur dipiscing elit. In mollis erat mattis neque facilisis</p>
              <a href="#" class="owl_link">Read More</a>
            </div>
          </div>
          <div class="item">
            <div class="banner">
              <div class="banner_title">September 10</div>
              <p>Jorem ipsum dolor sit tetur dipiscing elit. In mollis erat mattis neque facilisis, sit wertolio mero dasererat rutrumrem ipsum dolor sit tetur dipiscing elit. In mollis erat mattis neque facilisise </p>
              <a href="#" class="owl_link">Read More</a>
            </div>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </article> -->
</section>
<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container_12">
    <div class="grid_12"> 
      <h1 class="logo">
        <a href="index.jsp">
          WeCare
        </a>
      </h1>
      <div class="socials">
        
      </div>
     
    </div>
    <div class="clear"></div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-angle-up"></a>
</body>
</html>