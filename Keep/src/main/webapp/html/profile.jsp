<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "com.Keep.Entities.*" %>
    <%@ page import = "com.Keep.Helper.*" %>
    <%@ page import = " org.hibernate.Session" %>
    <%@ page import = "org.hibernate.Query" %>
    <%@ page import = "java.util.*" %>
<%
    	User user= (User)session.getAttribute("current");
    	if(user==null){
    		response.sendRedirect("sign-in.jsp");
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
	<!-- <link rel="stylesheet" href="../assets/css/card.css"> -->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light navbar-float">
      <div class="container">
        <a href="index.jsp" class="navbar-brand">Keep<span class="text-primary">Notes	</span></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">
          <ul class="navbar-nav ml-lg-4 pt-3 pt-lg-0">
            <li class="nav-item active">
              <a href="index.html" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
              <a href="about.html" class="nav-link">About</a>
            </li>
            <li class="nav-item">
              <a href="services.html" class="nav-link">Services</a>
            </li>
            <li class="nav-item">
              <a href="blog.html" class="nav-link">Blog</a>
            </li>
            <li class="nav-item">
              <a href="contact.html" class="nav-link">Contact</a>
            </li>
          </ul>

          <div class="ml-auto">
            <a href="sign-in.jsp" class="btn btn-outline rounded-pill">Log-Out</a>
          </div>
          
        </div>
      </div>
    </nav>

    <div class="page-banner home-banner">
      <div class="container h-100">
        <div class="row align-items-center h-100">
          <div class="col-lg-6 py-3 wow fadeInUp">
            <h1 class="mb-4">Capture notes and access them from your computer, phone or tablet.</h1>
            <p class="text-lg mb-5">Save your thoughts, wherever you are.<br>Capture what's on your mind <br>Add notes, lists, photos, and audio to Keep.</p>
          
			
           
          </div>
          <div class="col-lg-6 py-3 wow zoomIn">
            <div class="img-place">
              <img src="../assets/img/bg_image_1.png" alt="">
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>

  <main>
  <!-- .......................................... -->
  <div align="center">
  	  <div class="col-lg-6 py-3 wow fadeInUp">
            <div class="subhead">Add Notes</div>
            <h2 class="title-section">What's On Your Mind?</h2>
            <div class="divider"></div>
            
            <form action="../NoteServlet"method="post">
              <div class="py-2">
                <input type="text" class="form-control" placeholder="Title"name="NoteTitle">
              </div>
              <div class="py-2">
                <textarea rows="6" class="form-control" placeholder="Note"name="NoteMessage"></textarea>
              </div>
              <button type="submit" class="btn btn-primary rounded-pill mt-4">Add Note	</button>
            </form>
          </div>
  </div>
  <!-- .......................................... -->
     
    
  
    <div class="page-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 py-3 wow zoomIn">
            <div class="img-place text-center">
              <img src="../assets/img/bg_image_2.png" alt="">
            </div>
          </div>
          <div class="col-lg-6 py-3 wow fadeInRight">
            <h2 class="title-section"><%= user.getName() %>'s<span class="marked"> Notes</span> </h2>
            <div class="divider"></div>
            
         	<!-- ................................................................... -->
	<%-- 		         	<div class="cardcontainer">
			         	
            	
            
			  <div class="content">
			    <h1><%= note.getNoteTitle() %></h1>
			    <h3><%= note.getNoteMessage() %></h3>
			  </div>
			   
			  <div class="flap"></div>
	
				</div>
        	<div align="left">
          <br>
          <a href="#" class="btn btn-danger">Delete</a>
          </div> --%>
          				<% Session mysession = FactoryProvider.getFactory().openSession();
            	Query query = mysession.createQuery("from Notes where userid=:x");
            	query.setParameter("x",user.getId());
            	List<Notes> notes = query.list();
            	for(Notes note : notes){
            		%>
				          <div class="card" style="width: 18rem;">
				          
				  <div class="card-body">
				    <h5 class="card-title"><%= note.getNoteTitle() %></h5>
				    
				    <p class="card-text"><%= note.getNoteMessage() %></p>
				    <a href="#" class="class="btn btn-danger">Delete</a>
				    
				  </div>
				</div>
				          
				          <%  	
          }
            	%>
         	<!-- ................................................................... -->
         	
        
           
            <!-- <a href="#" class="btn btn-outline border ml-2">Success Stories</a> -->
          </div>
        </div>
      </div> <!-- .container -->
       
    </div> <!-- .page-section -->
  
    <div class="page-section counter-section">
      <div class="container">
        <div class="row align-items-center text-center">
          <div class="col-lg-4">
            <p>Total Notes</p>
            <h2>$<span class="number" data-number="816278"></span></h2>
          </div>
          <div class="col-lg-4">
            <p>Yearly Revenue</p>
            <h2>$<span class="number" data-number="216422"></span></h2>
          </div>
          <div class="col-lg-4">
            <p>Growth Ration</p>
            <h2><span class="number" data-number="73"></span>%</h2>
          </div>
        </div>
      </div> <!-- .container -->
    </div> <!-- .page-section -->
  
    <div class="page-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 py-3 wow fadeInLeft">
            <h2 class="title-section">We're <span class="marked">ready to</span> Serve you with best</h2>
            <div class="divider"></div>
            <p class="mb-5">We provide marketing services to startups & small business to looking for partner for their digital media, design & dev lead generation & communication.</p>
            <a href="#" class="btn btn-primary">More Details</a>
            <a href="#" class="btn btn-outline ml-2">See pricing</a>
          </div>
          <div class="col-lg-6 py-3 wow zoomIn">
            <div class="img-place text-center">
              <img src="../assets/img/bg_image_3.png" alt="">
            </div>
          </div>
        </div>
      </div> <!-- .container -->
    </div> <!-- .page-section -->
  
    <div class="page-section">
      <div class="container">
        <div class="text-center wow fadeInUp">
          <div class="subhead">Why Choose Us</div>
          <h2 class="title-section">Your <span class="marked">Comfort</span> is Our Priority</h2>
          <div class="divider mx-auto"></div>
        </div>
  
        <div class="row mt-5 text-center">
          <div class="col-lg-4 py-3 wow fadeInUp">
            <div class="display-3"><span class="mai-shapes"></span></div>
            <h5>High Performance</h5>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum, sit.</p>
          </div>
          <div class="col-lg-4 py-3 wow fadeInUp">
            <div class="display-3"><span class="mai-shapes"></span></div>
            <h5>Friendly Prices</h5>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum, sit.</p>
          </div>
          <div class="col-lg-4 py-3 wow fadeInUp">
            <div class="display-3"><span class="mai-shapes"></span></div>
            <h5>No time-confusing</h5>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum, sit.</p>
          </div>
        </div>
      </div> <!-- .container -->
    </div> <!-- .page-section -->
  
    
  
          
          
    
  
  
    <div class="page-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 py-3 wow fadeInUp">
            <h2 class="title-section">Get in Touch</h2>
            <div class="divider"></div>
            <p>Let's Talk Business, Or Just Have Coffee
We Would Love To Hear From You.</p>
  
            <ul class="contact-list">
              <li>
                <div class="icon"><span class="mai-map"></span></div>
                <div class="content">123 Fake Street, Indore, India</div>
              </li>
              <li>
                <div class="icon"><span class="mai-mail"></span></div>
                <div class="content"><a href="#">KeepNotes@gmail.com</a></div>
              </li>
              <li>
                <div class="icon"><span class="mai-phone-portrait"></span></div>
                <div class="content"><a href="#">+00 1122 3344 55</a></div>
              </li>
            </ul>
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

          <p><a href="#" >KeepNotes@gmail.com</a></p>
          <p><a href="#">+00 1122 3344 5566</a></p>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Quick Links</h5>
          <ul class="footer-menu">
            <li><a href="#">How it works</a></li>
            <li><a href="#">Security</a></li>
            <li><a href="#">Pricing</a></li>
            <li><a href="#">Resources</a></li>
            <li><a href="#">Report a Bug</a></li>
          </ul>
        </div>
        <div class="col-lg-3 py-3">
          <h5>About Us</h5>
          <ul class="footer-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Our Teams</a></li>
            <li><a href="#">Testimonials</a></li>
            <li><a href="#">News & Press</a></li>
          </ul>
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
            <a href="#">Privacy</a>
          </div>
          <div class="d-inline-block px-3">
            <a href="#">Contact Us</a>
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


</body>
</html>