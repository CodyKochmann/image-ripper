
`
try{
window.find_all_images = function(s) {
      var out, r, t, tmp;
      out = [];
      r = /https?:[\w\.\/?=-]+\.(webm|tiff|jpeg|jpg|gif|png)/g;
      tmp = s.match(r);
      while (tmp.length > 0) {
        t = tmp.pop();
        if (out.indexOf(t) === -1) {
          out.push(t);
        }
      }
      return out;
    };
window.images = find_all_images(document.body.outerHTML+document.head.outerHTML);

var gen_image = function(url) {
    var img = document.createElement("img");
    img.src = url;
    img.style.position="fixed";
    //img.style.margin=(screen.width*0.01).toString()+"px";
    //img.style.width=(screen.width*0.99).toString()+"px";
    img.style.width="auto";
    img.style.margin="0";
    //img.style.height=screen.height.toString()+"px";
    img.style.height="100%";
    img.style.top="0";
    img.style.left="0";
    return(img.outerHTML);
}

document.write(gen_image(images[0]));

window.clicker=function(){
    images.push(images.shift());
    this.src = images[0];
}

document.getElementsByTagName("img")[0].addEventListener("touchend", clicker, false);

document.style.background="black !important";
document.style.backgroundColor="black !important";
}catch (error) {
    alert(error);
}
`