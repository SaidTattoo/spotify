<%@page import="java.util.*" session="true" %>

<% HttpSession sesion=request.getSession();%>
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

	<% if(sesion.getAttribute("usuario")==null){
		response.sendRedirect("index.jsp");
	}else{ %>
		<div class="row">
			<div class="col-md-2 playlist">
				<h2><i class="fab fa-spotify"></i> Spotifli</h2>
				<ul id="playlist">
					<% 
					int a=1;
					boolean valor = true;
					while(valor == true){
						 a++;
						 if(sesion.getAttribute("nombre"+a)!=null){	
						%>	
					
					<li><i class="fas fa-music"></i><a href="musica/<% out.print(sesion.getAttribute("link"+a));%>.mp3""><% out.print(sesion.getAttribute("nombre"+a));%></a></li>
								<%
						 }
								if(sesion.getAttribute("nombre"+a)==null){
									valor = false;
						       
								}%>
					<% }%>
				</ul>
			</div>
			<div class="col-md-8 " id="caja">
				<div class="row" id="items_en_uso">

					<% 
					int b=1;
					boolean valor2 = true;
					while(valor2 == true){
					b++;
					if(sesion.getAttribute("link"+b)!=null){
					%>
					<div class="col-md-3 tema hover" id="<% out.print(sesion.getAttribute("link"+b));%>">
						<i class="play far fa-play-circle fa-4x"></i>
						<img class="ajustar" src="portadas/<% out.print(sesion.getAttribute("link"+b));%>.jpg">
					
					</div>

					<%
					}
					if(sesion.getAttribute("link"+b)==null){
					valor2 = false;
					}%>
					<% }%>
				</div>
			</div>	
			<div class="col-md-2">
				
					<h4 style="color:white;">usuario: </h4>
					<h2 style="color:white;"><% out.print(sesion.getAttribute("usuario"));%></h2>
			</div>	
		</div>
	</div>
<!--loop de musica  -->
<div class="container">
		<div class="row footer">
		<div id="audio0">
				<audio  id="audio" src="musica/stone-sour.mp3" >
					<p>Tu navegador no implementa el elemento audio</p>
				</audio>
				</div>
				<div class="col">
				 <img id="caratula" class="imagen" src="portadas/stone.jpg" alt="">
	
				<span id="time"></span>

				</div>
				<div class="col">
							<p class="text-center" id="nombre" >stone sour</p>
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
<% } %>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>


<script type="text/javascript">



var audio = document.getElementById("audio"); 
document.getElementById('pause').style.display = 'none';

function play() { 
    audio.play(); 
     document.getElementById('play').style.display = 'none';
     document.getElementById('pause').style.display = 'block';
} 
function pause() { 
    audio.pause(); 
    document.getElementById('pause').style.display = 'none';
     document.getElementById('play').style.display = 'block';
}
function setVolume() {
    var onchange=document.getElementById('mislider').value;
    audio.volume = onchange;
 }


document.getElementById('pause').style.display = 'none';
 $(document).ready(function(){
	$("div.tema").click(function() {
		var nombre = ($(this).attr("id"));
			$("#nombre").text(nombre)
			$("#caratula").attr("src","portadas/"+nombre+".jpg")
			$("#audio").attr("src","musica/"+nombre+".mp3")
			     document.getElementById('play').style.display = 'block';
     document.getElementById('pause').style.display = 'none';
		});
	});


audio.onended = function() {
    alert("The audio has ended");
};



 </script>
 <script type="text/javascript" src="js/script.js"></script>
</html>