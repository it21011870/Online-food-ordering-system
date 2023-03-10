<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Yummy Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name:  - v1.2.1
  * Template URL: https://bootstrapmade.com/-bootstrap-restaurant-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>Yummy kitchen<span>.</span></h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
         <li><a href="Index.jsp">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#menu">Menu</a></li>
          <li><a href="#events">Events</a></li>
          <li><a href="#chefs">Chefs</a></li>
          <li><a href="#gallery">Gallery</a></li>
         
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav><!-- .navbar -->

      <a class="btn-book-a-table" href="#book-a-table"> Table</a>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
 
 <section id="menu" class="menu">
      <div class="container" data-aos="fade-up">
  <h1>CART</h1>
        <div class="section-header">
      
         <table class="table" style='margin-top: 120px;margin-bottom: 100px;'>
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Food ID</th>
                    <th scope="col">Food Name</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
        
                  </tr>
                </thead>
                <tbody>
          <% int FID=1;
				double total=0;
				double delivery=200;
				String cusID="Cus001"; 
		%>
        	
 		<c:forEach var="cart" items="${cartDetails}">
 		<c:set var = "cID" value="${cart.CID}"/>
        	<c:set var = "pID" value="${cart.prodctID}"/>
        	<c:set var = "pName" value="${cart.productName}"/>
        	<c:set var = "quantity" value="${cart.quantity}"/>
        	<c:set var = "price" value="${cart.price}"/>
        
                  <tr>
                    <th scope="row"><%=FID%></th>
                    <td>${cart.prodctID}</td>
                    <td>${cart.productName}</td>
                    <td>${cart.quantity}</td>
                    <td>LKR ${cart.price}</td>
                    
                    <td>
                   <form action="removeCart" method="post">
         <input type="hidden" name="cID" value="${cart.CID}" class="deleteBT" >
                    	<button class="btn-book-a-table"> Remove</button>
                    </form>
                    </td>
                    
                    <%FID=FID+1; %>
                  </tr>
                  
                  </c:forEach>
                  
                   <tr>
                    <th scope="row">Delivery chargers</th>
					<td></td>
					<td></td>
					<td></td>
					
                   <td>
                    LKR <%=delivery%>
                    </td>
                     <tr><td></td></tr>
                  <tr><td></td></tr>
                   <tr><td></td></tr>
                  </tr>
                   <tr>
                    <th scope="row">Total</th>
					<td></td>
					<td></td>
					<td></td>
					
                  <th scope="row">
                    LKR ${cartTotal}
                    </th>
                  </tr>

                </tbody>
              </table>
<div class="row g-3">
        <div class="col-md-4"  style='text-align: left; background-color: azure;'>
            <form action="scheduleOrder" method="post">    
        Enter the arriving time
        <input type="hidden" name="cusID" value="<%=cusID%>" class="deleteBT" >
        <input type="time" id="appt" name="schedule">
         <br><br>
	   <button class="btn-book-a-table">Schedule Order</button>
	</form>
	  </div>
	   <div class="col-md-7" style='text-align: right;margin-top: 40px;'>
	   
	   <form action="orderNow" method="post">
	   <input type="hidden" name="cusID" value="<%=cusID%>" class="deleteBT" > 
	   <button class="btn-book-a-table" >Order now</button>
	   </form>
      </div></div>
    </section><!-- End Menu Section -->
 
  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="container">
      <div class="row gy-3">
        <div class="col-lg-3 col-md-6 d-flex">
          <i class="bi bi-geo-alt icon"></i>
          <div>
            <h4>Address</h4>
            <p>
              Panukarapitiya <br>
              Rathnapura<br>
            </p>
          </div>

        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-telephone icon"></i>
          <div>
            <h4>Reservations</h4>
            <p>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-clock icon"></i>
          <div>
            <h4>Opening Hours</h4>
            <p>
              <strong>Mon-Sat: 11AM</strong> - 23PM<br>
              Sunday: Closed
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Yummy</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>

  </footer><!-- End Footer -->
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>