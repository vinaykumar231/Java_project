<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SES | Home</title>

<link rel=stylesheet href=css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="css/mystyle.css">
</head>
<body>
<!--  Navigation Bar Code -->
<%@include file="navbar1.jsp" %>


<div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-interval="10000">
      <img src="https://source.unsplash.com/800x200/?game,sport" class="d-block w-100" alt="..." height=500px>
    </div>
    <div class="carousel-item" data-interval="2000">
      <img src="https://source.unsplash.com/800x200/?cricket,football" class="d-block w-100" alt="..." height=500px>
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/800x200/?chess,rugby" class="d-block w-100" alt="..." height=500px>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-target="#carouselExampleInterval" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-target="#carouselExampleInterval" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
</div>

<div class="container my-4" >

	<div class="row">
		<div class="col-6 datablock" >
			<h3>Importance of Sports</h3>
Whenever it comes to sports, we often come across a common question- “what is the importance of games in a student’s life?”. No matter how much we say that studies are important, we can’t deny that sports help in the overall development and growth of a student. In fact, we all know there are many famous sports persons like Rahul Dravid and Anil Kumble who were indeed great scholars in studies but made their career in sports.

Do you know both these Indian Cricketers were pursuing Chartered Accountancy and Engineering respectively but dropped as they lost interest in studies and joined Cricket? And the rest became history! Not to mention, they have achieved a lot of success even beyond their initial expectations. So, dear parents, if you see that your child is not taking much interest in studies but showing interest in some other activities, there are many other fields that are always open for them. And one of them is sports. One of the best source of physical education. All of these goals may be realised with dedication, hard work, consistent practise, and taking a few baby steps starting in elementary school. So, Let’s check out exactly how games and sports are going to play a major role in students’ life! 					
		</div>
		<div class="col-5 mx-1 datablock">
		<h3>Why Play?</h3>
		
Play allows children to use their creativity while developing their imagination, dexterity, and physical, cognitive, and emotional strength. Play is important to healthy brain development. It is through play that children at a very early age engage and interact in the world around them.
		</div>
	
	</div>

</div>















</body>
<%@include file="footer.jsp"%> 

</html>