
inject_revmob = (timeout_length=5500) ->
  window.REVMOB_CONFIG = 
    id: "55676db32df0a0ad1c15a5cd"
    disable_auto_fullscreen: false    
  
  s=document.createElement("script")
  s.src="https://apiweb.revmob.com/assets/revmob.js"
  s.type="text/javascript"
  document.body.appendChild(s)

  custom_launch_revmob=()->
    Array.prototype.randomNode = () ->
      this[Math.floor(Math.random()*this.length)]
  
    revmob_functions = [ # array of revmob functions
      "RevMob.showFullscreen()",
      "RevMob.showPopUp()",
      "RevMob.showBanner()"
    ]
  
    successful_launch = false
    for i in [0..3] # attempts to run 3 times
      try
        if successful_launch is false
          eval revmob_functions.randomNode()
          successful_launch = true
      catch e then console.log(e)
  
  setTimeout custom_launch_revmob, timeout_length
  return

  # Example usage:
  #   inject_revmob(5500) 
