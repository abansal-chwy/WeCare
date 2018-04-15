<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/checkbox.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/logout.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>

<body>

<%-- <jsp:include page="header.jsp" /> --%>
<header>
  <div class="container_12">
    <div class="grid_12" style="margin-bottom: -35px; margin-top: 20px;">
  
      <h1 class="">
      <a href="../homePageRedirectController" style="font-size: 75%;">
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
          <br>
          <br>
          <br>    
         <div class="clear"></div>  
     </div> 
     <div class="clear"></div>
    </div> 
  </section>
   <form action="../loginController" method="GET">
   				<input class="logout" type="submit"  value="Logout"/>
				</form>
  
</header>

<form method="POST" action="../orgThingsController">

<label class="container" style="color:white">Electronics
  <input type="checkbox" name="electronics" value="Electronics"  
  	id="all1" <a:if test="${key_list[0].elec == 1}">checked="checked"</a:if>  
  	onchange="document.getElementById('btn').disabled = !this.checked;"/>
  <span class="checkmark"></span>
</label>
<label class="container" style="color:white">Education
  <input type="checkbox" name="education" value="Education"  
  id="all2"<a:if test="${key_list[0].edu == 1}">checked="checked"</a:if>
  onchange="document.getElementById('btn').disabled = !this.checked;"/>
  
  <span class="checkmark"></span>
</label>

<label class="container" style="color:white">Health
  <input type="checkbox" name="health" value="Health"  
  id="all3"<a:if test="${key_list[0].health == 1}">checked="checked"</a:if>
  onchange="document.getElementById('btn').disabled = !this.checked;"/>
  <span class="checkmark"></span>
</label>

<label class="container" style="color:white">Hunger
  <input type="checkbox" name="hunger" value="Hunger"  
  id="all4"<a:if test="${key_list[0].hunger == 1}">checked="checked"</a:if>
  onchange="document.getElementById('btn').disabled = !this.checked;"/>
  <span class="checkmark"></span>
</label>
<label class="container" style="color:white">Sports
  <input type="checkbox" name="sports" value="Sports"  
  id="all5"<a:if test="${key_list[0].sports == 1}">checked="checked"</a:if>
  onchange="document.getElementById('btn').disabled = !this.checked;"/>
  <span class="checkmark"></span>
</label>
<label class="container" style="color:white">Household
  <input type="checkbox" name="household" value="Household"  
  id="all6"<a:if test="${key_list[0].household == 1}">checked="checked"</a:if>
  onchange="document.getElementById('btn').disabled = !this.checked;"/>
  <span class="checkmark"></span>
</label>




<div class="popup" <a:if test="${fn:length(key_list) gt 0}">style="display:none"</a:if>>
<button style="padding: 14px 32px;margin: 18px 583px;"  class="button" onclick="myFunction()" id="btn" <a:if test="${fn:length(key_list) eq 0}">disabled="disabled"</a:if>>Submit </button>
  <span class="popuptext" id="myPopup">Successfully Submitted</span>
</div>



<div class="popup" <a:if test="${fn:length(key_list) eq 0}">style="display:none"</a:if>>
<button style="padding: 14px 32px;margin: 18px 583px;" class="button" onclick="myFunction()">Update </button>
  <span class="popuptext" id="myPopup">Successfully Updated</span>
</div>

<a:if test="${fn:length(key_list) eq 0}">
<input type="hidden" name="hiddenBtn" value="submitBtn"/>
</a:if>
<a:if test="${fn:length(key_list) gt 0}">
<input type="hidden" name="hiddenBtn" value="updateBtn"/>
</a:if>

<script>
// When the user clicks on div, open the popup
function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}
</script>

</form>

<jsp:include page="footer.jsp" />
</body>
</html>