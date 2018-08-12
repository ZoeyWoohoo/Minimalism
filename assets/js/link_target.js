window.onload = function(){
  var anchors = document.getElementById('post-content').getElementsByTagName('a');
  for (var i=0; i<anchors.length; i++){
    anchors[i].setAttribute('target', '_blank');
  }
}
