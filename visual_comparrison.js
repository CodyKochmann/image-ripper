// Generated by CoffeeScript 1.9.2
(function() {
  var analyze_photo, loadCanvas;

  analyze_photo = function(url) {
    var c, context, img, s;
    c = document.createElement("canvas");
    s = c.style;
    s.top = "0px";
    s.left = "0px";
    s.position = "fixed";
    s.height = "100px";
    s.width = "100px";
    c.id = "analysis_canvas";
    document.body.appendChild(c);
    c = document.getElementById(c.id);
    context = c.getContext('2d');
    img = new Image;
    img.crossOrigin = location.origin;
    img.onload = function() {
      var p;
      context.drawImage(this, 0, 0);
      p = context.getImageData(10, 10, 1, 1).data;
      console.log("#" + ("000000" + rgbToHex(p[0], p[1], p[2])).slice(-6));
    };
    img.src = url;
  };

  loadCanvas = function(dataURL) {
    var canvas, context, imageObj;
    canvas = document.getElementById('myCanvas');
    context = canvas.getContext('2d');
    imageObj = new Image;
    imageObj.onload = function() {
      context.drawImage(this, 0, 0);
    };
    imageObj.src = dataURL;
  };

}).call(this);
