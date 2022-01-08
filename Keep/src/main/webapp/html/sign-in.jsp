   <%@ page  errorPage = "error.jsp" %>
 <%@ page import = "com.Keep.Entities.*" %>
   <%
		session= request.getSession();
    	User user= (User)session.getAttribute("current");
    	if(user!=null){
    		response.sendRedirect("profile.jsp");	
    	}
    	
    	
    	
    	
    %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com">

  <title>Keep</title>

  <link rel="stylesheet" href="../assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="../assets/css/bootstrap.css">

  <link rel="stylesheet" href="../assets/css/maicons.css">

  <link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">

  <link rel="stylesheet" href="../assets/css/theme.css">

</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a href="index.jsp" class="navbar-brand">Keep<span class="text-primary">Notes.</span></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">
          <ul class="navbar-nav ml-lg-4 pt-3 pt-lg-0">
            <li class="nav-item">
              <a href="index.jsp" class="nav-link">Home</a>
            </li>
          </ul>

          <div class="ml-auto">
         	 
         	 
            <a href="index.jsp" class="btn btn-outline rounded-pill">Back To Home</a>
           
          </div>
        </div>
      </div>
    </nav>

    <div class="container mt-5">
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                <li class="breadcrumb-item active">Sign-In</li>
              </ul>
            </nav>
            <h1 class="text-center">Sign In</h1>
          </div>
        </div>
      </div>
    </div>
  </header>

  <main>
    <div class="page-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 py-3">
            <h2 class="title-section">Join Us</h2>
            <div class="divider"></div>
            <p>Always within reach
Keep works on your phone, tablet and computer. Everything you add to Keep syncs across your devices so your important stuff is always with you.</p>
  
            <ul class="contact-list">
              <li>
                <div class="icon"><span class="mai-map"></span></div>
                <div class="content">123 Fake Street, Indore, India</div>
              </li>
              <li>
                <div class="icon"><span class="mai-mail"></span></div>
                <div class="content"><a href="">KeepNotes@gmail.com</a></div>
              </li>
              <li>
                <div class="icon"><span class="mai-phone-portrait"></span></div>
                <div class="content"><a href="#">+00 1122 3344 55</a></div>
              </li>
            </ul>
            <a href="sign-up.jsp" class="btn btn-primary rounded-pill mt-4">Join Us</a>
          </div>
          <div class="col-lg-6 py-3">
            <div class="subhead">Sign-In</div>
            <h2 class="title-section">Access Notes	</h2>
            <div class="divider"></div>
            
            <form  method ="post" action="../LoginServlet" id= "login-form">
              <div class="py-2">
                <input type="email" class="form-control" placeholder="Email" id="email" name ="email" >
               
              </div>
              <div class="py-2">
                <input type="password" class="form-control" placeholder="Password" id = "password" name = "password">
              </div>
             
              <button type="submit" class="btn btn-primary rounded-pill mt-4">Sign-In</button>
            </form>
          </div>
        </div>
      </div> <!-- .container -->
    </div> <!-- .page-section -->
  </main>

  <footer class="page-footer">
    <div class="container">
<div class="row justify-content-center mb-5">
        <div class="col-lg-3 py-3">
          <h3>Keep<span class="text-primary">Notes.</span></h3>
          <p>Keep every thought.</p>

          <p><a href="mailto:KeepNotes@gmail.com">KeepNotes@gmail.com</a></p>
          <p><a href="tel:+00 1122 3344 5566">+00 1122 3344 5566</a></p>
        </div>
        <div class="col-lg-3 py-3">
         
        </div>
        <div class="col-lg-3 py-3">
          
        </div>
        <div class="col-lg-3 py-3">
        
          <div class="sosmed-button mt-4">
            <a href="#"><span class="mai-logo-facebook-f"></span></a>
            <a href="#"><span class="mai-logo-twitter"></span></a>
            <a href="#"><span class="mai-logo-google"></span></a>
            <a href="#"><span class="mai-logo-linkedin"></span></a>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 py-2">
        <p>Copyright &copy; <script>document.write(new Date().getFullYear())</script> &emsp;All Rights Reserved</p>
          	
        </div>
        <div class="col-sm-6 py-2 text-right">
         
          <div class="d-inline-block px-3">
            <a href="index.jsp#contact">Contact Us</a>
          </div>
        </div>
      </div>
    </div> <!-- .container -->
  </footer> <!-- .page-footer -->


  <script src="../assets/js/jquery-3.5.1.min.js"></script>

  <script src="../assets/js/bootstrap.bundle.min.js"></script>

  <script src="../assets/vendor/wow/wow.min.js"></script>

  <script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

  <script src="../assets/vendor/waypoints/jquery.waypoints.min.js"></script>

  <script src="../assets/vendor/animateNumber/jquery.animateNumber.min.js"></script>

  <script src="../assets/js/google-maps.js"></script>

  <script src="../assets/js/theme.js"></script>

  <!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script> -->


</body>
</html>