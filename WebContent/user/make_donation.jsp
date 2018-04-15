<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style_donate.css"> <!-- Resource style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/logout.css">
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%-- <jsp:include page="header.jsp" /> --%>
<!-- <i style="color:white;font-size: 40px" class="fa fa-home"></i> -->
<br>
<br>
<a:set var="val1" value="${sessionScope.isUserLoggedIn}"></a:set>
			<a:set var="val2" value="yes"></a:set>
  <div class="container_12">
      <h1 class="">
      <a:if test="${val1 != val2}">
      <a href="index.jsp" style="font-size: 75%;">
          WeCare
       </a>
       </a:if>
      <a:if test="${val1 == val2}">
      <a href="index1.jsp" style="font-size: 75%;">
          WeCare
       </a>
       </a:if>
      </h1> 
    </div>
  
</head>
<body>
			<a:set var="val1" value="${sessionScope.isUserLoggedIn}"></a:set>
			<a:set var="val2" value="yes"></a:set>
				<a:if test="${val1 == val2}">
				<form action="../loginController" method="GET">
   				<input class="logout" type="submit"  value="Logout"/>
				</form>
				</a:if>

<form><!--  method="post" action="../userdonateController" -->
 
 <section class="cd-faq">
	<ul class="cd-faq-categories">
		<li><a class="selected" href="../userdonationController?param1=elec">Electronic</a></li>
		<li><a href="../userdonationController?param1=edu">Education</a></li>
		<li><a href="../userdonationController?param1=health">Health</a></li>
		<li><a href="../userdonationController?param1=hunger">Hunger</a></li>
		<li><a href="../userdonationController?param1=sports">Sports</a></li>
		<li><a href="../userdonationController?param1=household">Household</a></li>
		
	</ul> <!-- cd-faq-categories -->

	<div class="cd-faq-items">
		<ul id="basics" class="cd-faq-group">
			<li class="cd-faq-title"></li>
			
			<a:set var="val1" value="[]"/>
			<a:set var="val2" value="${sessionScope.key }"/>
			
			
			<a:choose>
			<a:when test="${val1 != val2}">
			<a:forEach var="i" items="${sessionScope.key}">
			<li>
				<a class="cd-faq-trigger" href=${i.URL } target="_blank">${i.name }</a>
				<div class="cd-faq-content">
				
									</div> <!-- cd-faq-content -->
			</li>
			</a:forEach>
			</a:when>
			<a:otherwise>
			<li>
				<a class="cd-faq-trigger"  target="_blank">N/A</a>
				<div class="cd-faq-content">
				</div> <!-- cd-faq-content -->
			</li>
			</a:otherwise>	
			</a:choose>
		</ul> <!-- cd-faq-group -->

		<%-- <ul id="mobile" class="cd-faq-group">
		<li class="cd-faq-title"></li>
			
			<a:forEach var="i" items="${sessionScope.key}">
			<li>
				<a class="cd-faq-trigger" href="#0">${i.EIN }This</a>
				<div class="cd-faq-content">
									</div> <!-- cd-faq-content -->
			</li>
			
			</a:forEach>
	
		</ul> <!-- cd-faq-group -->

		<ul id="account" class="cd-faq-group">
			<li class="cd-faq-title"></li>
			<li>
				<a class="cd-faq-trigger" href="#0">How do I change my password?</a>
				<div class="cd-faq-content">
					
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How do I delete my account?</a>
				<div class="cd-faq-content">
					
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How do I change my account settings?</a>
				<div class="cd-faq-content">
					
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">I forgot my password. How do I reset it?</a>
				<div class="cd-faq-content">
					
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="payments" class="cd-faq-group">
			<li class="cd-faq-title"></li>
			<li>
				<a class="cd-faq-trigger" href="#0">Can I have an invoice for my subscription?</a>
				<div class="cd-faq-content">
					
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Why did my credit card or PayPal payment fail?</a>
				<div class="cd-faq-content">
					
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Why does my bank statement show multiple charges for one upgrade?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="privacy" class="cd-faq-group">
			<li class="cd-faq-title"></li>
			<li>
				<a class="cd-faq-trigger" href="#0">Can I specify my own private key?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit quidem delectus rerum eligendi mollitia, repudiandae quae beatae. Et repellat quam atque corrupti iusto architecto impedit explicabo repudiandae qui similique aut iure ipsum quis inventore nulla error aliquid alias quia dolorem dolore, odio excepturi veniam odit veritatis. Quo iure magnam, et cum. Laudantium, eaque non? Tempore nihil corporis cumque dolor ipsum accusamus sapiente aliquid quis ea assumenda deserunt praesentium voluptatibus, accusantium a mollitia necessitatibus nostrum voluptatem numquam modi ab, sint rem.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">My files are missing! How do I get them back?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How can I access my account data?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus magni vero deserunt enim et quia in aliquam, rem tempore voluptas illo nisi veritatis quas quod placeat ipsa! Error qui harum accusamus incidunt at libero ipsum, suscipit dolorum esse explicabo in eius voluptates quidem voluptatem inventore amet eaque deserunt veniam dignissimos excepturi? Dolore, quo amet nostrum autem nemo. Sit nam assumenda, corporis ea sunt distinctio nostrum doloribus alias, beatae nesciunt dolore saepe consequuntur minima eveniet porro dolor officiis maiores ab obcaecati officia enim aliquam. Itaque fuga molestiae hic accusantium atque corporis quia id sequi enim vero? Hic aperiam sint facilis aliquam quia, accusamus tenetur earum totam enim est, error. Iusto, reiciendis necessitatibus molestias. Voluptatibus eos explicabo repellat nesciunt nam vero minima.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How can I control if other search engines can link to my profile?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="delivery" class="cd-faq-group">
			<li class="cd-faq-title"></li>
			<li>
				<a class="cd-faq-trigger" href="#0">What should I do if my order hasn't been delivered yet?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit quidem delectus rerum eligendi mollitia, repudiandae quae beatae. Et repellat quam atque corrupti iusto architecto impedit explicabo repudiandae qui similique aut iure ipsum quis inventore nulla error aliquid alias quia dolorem dolore, odio excepturi veniam odit veritatis. Quo iure magnam, et cum. Laudantium, eaque non? Tempore nihil corporis cumque dolor ipsum accusamus sapiente aliquid quis ea assumenda deserunt praesentium voluptatibus, accusantium a mollitia necessitatibus nostrum voluptatem numquam modi ab, sint rem.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How can I find your international delivery information?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Who takes care of shipping?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How do returns or refunds work?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit quidem delectus rerum eligendi mollitia, repudiandae quae beatae. Et repellat quam atque corrupti iusto architecto impedit explicabo repudiandae qui similique aut iure ipsum quis inventore nulla error aliquid alias quia dolorem dolore, odio excepturi veniam odit veritatis. Quo iure magnam, et cum. Laudantium, eaque non? Tempore nihil corporis cumque dolor ipsum accusamus sapiente aliquid quis ea assumenda deserunt praesentium voluptatibus, accusantium a mollitia necessitatibus nostrum voluptatem numquam modi ab, sint rem.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How do I use shipping profiles?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How does your UK Next Day Delivery service work?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How does your Next Day Delivery service work?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">When will my order arrive?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">When will my order ship?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->
 --%>	</div> <!-- cd-faq-items -->
	<a href="#0" class="cd-close-panel">Close</a>
</section> <!-- cd-faq -->
<!-- <script src="js/jquery-2.1.1.js"></script> -->
<script src="js/jquery.mobile.custom.min.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->



</form>

<jsp:include page="footer.jsp" />

</body>
</html>