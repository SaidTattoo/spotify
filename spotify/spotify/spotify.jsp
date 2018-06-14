<%@page import="java.util.*" session="true" %>
<% 
HttpSession sesion=request.getSession();%>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2 playlist">
				<p>playlist</p>
				<ul>


					<li><i class="fas fa-music"></i><a href="">cancion 1</a></li>
					<li><i class="fas fa-music"></i><a href="">cancion 2</a></li>
					<li><i class="fas fa-music"></i><a href="">cancion 3</a></li>


				</ul>
			</div>
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-3 tema hover">
						<i class="play far fa-play-circle fa-4x"></i>
						<img class="ajustar" src="portadas/rage.jpg">
					</div>
					<div class="col-md-3 tema hover">
						<i class="play far fa-play-circle fa-4x"></i>
						<img class="ajustar" src="portadas/misfits.jpg">
					</div>
					<div class="col-md-3 tema hover">
						<i class="play far fa-play-circle fa-4x"></i>
						<img class="ajustar" src="portadas/stone.jpg">
					</div>
					<div class="col-md-3 tema hover">
						<i class="play far fa-play-circle fa-4x"></i>
						<img class="ajustar" src="portadas/rage.jpg">
					</div>
				</div>
			</div>	
			<div class="col-md-1">
				<p><%out.print(sesion.getAttribute("usuario"));%></p>
			</div>	
		</div>
	</div>
<!--loop de musica  -->
<div class="container">
		<div class="row footer">
		<div id="audio0">
				<audio  id="audio" src="musica/stone-sour.mp3">
					<p>Tu navegador no implementa el elemento audio</p>
				</audio>
				</div>
				<div class="col">
				 <img class="imagen" src="portadas/stone.jpg" alt="">
	
				<span id="time"></span>
			
		

				</div>
				<div class="col">
							<p class="text-center" >stone sour</p>
							<a class="text-center icono" style="display: block;" id="play" onclick="play()" >
								<i class="far fa-play-circle fa-4x"></i>
							</a> 
							<a class="text-center icono"  id="pause" onclick="pause()" >
								<i class="far fa-pause-circle fa-4x"></i>
							</a>
				</div>
				<div class="col">
						<input onclick="setVolume()"  class="slider-wrapper " type="range" min="0" max="1" value="15" step="0.1" id="mislider">
				</div>
				<div class="hp_slide">
						<div class="hp_range"></div>
				</div>
		</div>
		</div>

</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/script.js"></script>
</html>