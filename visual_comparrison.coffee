analyze_photo=(url)->
  c = document.createElement("canvas")
  s=c.style
  s.top="0px"#"-100px"
  s.left="0px"#"-100px"
  s.position="fixed"
  s.height="100px"
  s.width="100px"
  c.id="analysis_canvas"
  document.body.appendChild(c)
  c=document.getElementById(c.id)
  context = c.getContext('2d')
  img=new Image
  img.crossOrigin = location.origin
  img.onload= ->
    context.drawImage this, 0, 0
    p=context.getImageData(10,10,1,1).data
    console.log("#" + ("000000" + rgbToHex(p[0], p[1], p[2])).slice(-6))
    return
  img.src=url
  return



loadCanvas = (dataURL) ->
  canvas = document.getElementById('myCanvas')
  context = canvas.getContext('2d')
  # load image from data url
  imageObj = new Image

  imageObj.onload = ->
    context.drawImage this, 0, 0
    return

  imageObj.src = dataURL
  return
