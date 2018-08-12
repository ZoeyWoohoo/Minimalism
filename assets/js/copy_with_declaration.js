document.addEventListener('copy', function(e) {
  var selection = window.getSelection();
  var author = text(document.getElementById("author"));
  var url = window.location.href;
  var title = text(document.getElementsByTagName("title")[0]);
  var newSelection = '作者: ' + author + '\n' +
   '链接: ' + url + '\n' +
   '来源: ' + title + '\n' +
   '著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\n' + selection;
  e.clipboardData.setData('text/plain', newSelection);
  e.preventDefault();
});

//兼容浏览器获取节点文本的方法
function text(e) {
  var t="";

  //如果传入的是元素，则继续遍历其子元素
  //否则假定它是一个数组
  e=e.childNodes||e;

  //遍历所有子节点
  for(var j=0; j<e.length; j++) {
    //如果不是元素，追加其文本值
    //否则，递归遍历所有元素的子节点
    t+=e[j].nodeType!=1?e[j].nodeValue:text(e[j].childNodes);
  }

  t = t.replace(/^\s+|\s+$/g, '');

  //返回区配的文本
  return t;
}
