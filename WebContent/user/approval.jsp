<%-- <%@page import="java.awt.List"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Approval</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<link rel="stylesheet" href="css/logout.css">
<script type="text/javascript">
$("#document").ready(function(){
	$.ajax({
		url: "../AdminController", 
		type:"post",
		success:function(data){
		/* setTimeout(refresh,2); */
		}	
	}
	);
})
function accept( EIN,thisObj)
{
	$.ajax({
		url: "../ApprovalController", 
		type:"post",
		data:{"EIN":EIN,"status":"Accept"},
		success: function(result){
			alert("Organization Accepted");
			$(thisObj).parents("tr:first").remove();
		/* 	$("#Pending").load("#Pending"); */
		}
        
    	}
	);
	}
function reject( EIN,thisObj)
{
	$.ajax({
		url: "../ApprovalController", 
		type:"post",
		data:{"EIN":EIN,"status":"Reject"},
		success: function(result){
			alert("Organization Rejected");
			$(thisObj).parents("tr:first").remove();
			/* $("#Pending").load("#Pending"); */
		}
        
    	}
	);
	}
</script>
<style>
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    border-radius: 10px;
}

.savebtn {
    width: auto;
    padding: 10px 18px;
    background-color: #4CAF50;
    border-radius: 10px;
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
</style>
<script>



 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
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

<body class="page1" id="top" onlaod="../AdminController" method="post">
<!--==============================
              header
=================================-->
<header>
<div class="container_12">
    <div class="grid_12" style="margin-bottom: -35px; margin-top: 20px;">
  
      <h1 class="">
      	<a href="approval.jsp" style="font-size: 75%;">
          WeCare
        </a>
      </h1>  
   </div>
 </div>
  <form action="../loginController" method="GET">
   				<input class="logout" type="submit"  value="Logout"/>
				</form>
 
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container_12">
        <div class="grid_12">          
          <div class="navigation ">
            <nav>
              <ul class="sf-menu">
               <%-- <li><a href="index.html">Home</a></li>
               <li class="current"><a href="about.html">About</a></li>
               <li><a href="mission.html">Mission</a></li>
               <li><a href="membership.html">Membership</a></li>
               <li><a href="contacts.html">Contacts</a></li> --%>
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
<!--=====================
          Content
======================-->

<section id="content" style="height:700px"><div class="ic">More Website Templates @ TemplateMonster.com - September22, 2014!</div>
  <div class="container_12">
  <!-- <form action="../AdminController" method="post">
   <button >Show Pending Approvals</button>
 </form> -->
    <div class="grid_8" style="height:30%; background-color:white">
      <div class="text1 tx__1">Pending Approval</div>
   
    <div class="clear"></div>
    <div class="grid_approval">
    <div  id="Pending" name="pending">
    <%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
      <table width="100%" border="2" id="request">
 		<tr>
 		<td align="center"><fieldset style="color:black" class="field_set"><Legend><b></b></Legend><label for="EIN"><b>EIN</b></label>
 			</fieldset></td>
 			<td align="center"><fieldset  style="color:black" class="field_set"><Legend><b></b></Legend><label for="Name"><b>Name of the NGO</b></label>
 			</fieldset></td>
 			<td width="20%" align="center"><fieldset style="color:black" class="field_set"><Legend><b></b></Legend><label for="Approve"><b>Approve</b></label>
 			</fieldset></td>
 			<td width="20%" align="center"><fieldset style="color:black" class="field_set"><Legend><b></b></Legend><label for="Decline"><b>Decline</b></label>
 			</fieldset></td>
 		</tr>
 		<a:forEach var="i" items="${sessionScope.key}">
 		<tr>

 		<td align="center">${i.EIN }</td>
 		<td align="center">${i.name }</td>
 		<td width="20%" align="center"><button type="button" onclick="accept(${i.EIN },this)" class="savebtn" height="10" >Accept</button></td>
 		<td width="20%" align="center"><button type="button" onclick="reject(${i.EIN },this)" class="cancelbtn" height="10">Decline</button></td> 
 		</tr>
			
			</a:forEach>
			</table>
	</div>
    <div class="clear" style="height:30%; background-color:white" ></div>
    <div class="grid_12" style="height:30%; background-color:white" >
      <%-- <div class="block-4">
        <div class="block-4_title">Life Group</div>Amus at magna non nunc tristique rhoncus. Aliquam nibh antegestas id dictum a, commodo luctus libero. Praesent faucibus malesuada faucibus. Donec laoreet metus id laoreeto alesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed 
        <a href="#">Learn <br> More</a>
      </div> --%>
    </div>
    <div class="clear"></div>
     </div>
  </div>
   <div class="clear"></div>
  </div>
  
</section>
<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container_12">
    <div class="grid_12"> 
      <h1 class="logo">
        <a href="index.html">
          WECARE
        </a>
      </h1>
      <div class="socials">
        <a href="#" class="fa fa-twitter"></a>
        <a href="#" class="fa fa-facebook"></a>
        <a href="#" class="fa fa-google-plus"></a>
        <a href="#" class="fa fa-pinterest"></a>
      </div>
     
    <div class="clear"></div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-angle-up"></a>
</body>
</html>

