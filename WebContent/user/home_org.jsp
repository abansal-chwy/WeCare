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

<body class="page1" id="top">
<!--==============================
              header
=================================-->	
 
    
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
   
 
   <form action="../loginController" method="GET">
   				<input class="logout" type="submit"  value="Logout"/>
				</form>

<%--     
 <form action="<%=request.getContextPath() %>/user/login.jsp">
<input type="submit" class="abc" value="Login"/>
</form>
 --%><div class="clear"></div>
 
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container_12">
        <div class="grid_12" >          
         <!--  <div class="navigation">
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
          </div>  -->      
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
        <a href="../orgThingsController" class="banner_title">Add <br>
Things</a>
        <div class="maxheight"></div>
      </div>
    </div>
    <div class="grid_4" style="margin-top:40px">
      <div class="banner">
        <a href="../CreateEventController?eventid=0" class="banner_title">Create <br>
Events</a>
        <div class="maxheight"><img src="" alt=""></div>
      </div>
    </div>
    <div class="grid_4" style="margin-top:40px">
      <div class="banner">
        <a href="#" class="banner_title">Available <br>
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