<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/camera.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/button.css">
<link rel="stylesheet" href="css/registration.css">
<link rel="stylesheet" href="css/but.css">
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
<body>
 <header>
  <div class="container_12">
    <div class="grid_12" style="margin-bottom: -35px; margin-top: 20px;">
  
      <h1 class="">
      <a href="index.jsp" style="font-size: 75%;">
          WeCare
          </a>
      </h1>  
     </div>
    </div>
   
<div class="clear"></div>
 
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container_12">
        <div class="grid_12">          
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
         <div class="clear"></div>  
     </div> 
     <div class="clear"></div>
    </div> 
  </section>
</header>
 <form>
 <div class="registration">
<input type="text" placeholder="Name" name="name" required> <br>
<input type="text" placeholder="Email" name="email" required> <br>
<input type="number" placeholder="Phone Number" name="phonenumber" required> <br>
<select class="location">
<option value="" disabled selected>Select your City</option>
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
<br>
<select class="location">
<option value="" disabled selected>Select your State</option>
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
<br>
<input type="text" placeholder="EIN" name="EIN" required> <br>
<input type="password" placeholder="Enter Password" name="psw" required><br>
<input type="password" placeholder="Confirm Password" name="psw1" required><br>
<button type="submit"> Create an Account </button>
</div>
</form>
 
<footer id="footer">
  <div class="container_12">
    <div class="grid_12"> 
      
      <div class="socials">
        <a href="#" class="fa fa-twitter"></a>
        <a href="#" class="fa fa-facebook"></a>
        <a href="#" class="fa fa-google-plus"></a>
        <a href="#" class="fa fa-pinterest"></a>
      </div>
     
    </div>
    <div class="clear"></div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-angle-up"></a>
</body>
</html>