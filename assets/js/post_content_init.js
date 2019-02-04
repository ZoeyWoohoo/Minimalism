window.onload = function() {
  // Make article links open in new tab by default
  var anchors = document.getElementById('post-content').getElementsByTagName('a');
  for (var i=0; i<anchors.length; i++){
    anchors[i].setAttribute('target', '_blank');
  }

  // Listen to images after DOM content is fully loaded
  var images = document.getElementById('post-content').getElementsByTagName('img');
  var zooming = new Zooming();
  for (var i=0; i<images.length; i++){
    if (images[i].className == "") {
      zooming.listen(images[i]);
    }
  }
}
