 $(document).ready(function(){
    $('a').on('click', '#items_en_uso div', function(){
      alert($(this).attr('id'))
    })
  })


var vid = document.getElementById("audio"); 
document.getElementById('pause').style.display = 'none';

function play() { 
    vid.play(); 
     document.getElementById('play').style.display = 'none';
     document.getElementById('pause').style.display = 'block';
} 
function pause() { 
    vid.pause(); 
    document.getElementById('pause').style.display = 'none';
     document.getElementById('play').style.display = 'block';
}
function setVolume() {
    var onchange=document.getElementById('mislider').value;
    vid.volume = onchange;
 }

