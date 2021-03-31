function not-exist { -not (Test-Path $args) }
if(not-exist ./pickle.mp4) {
  Invoke-WebRequest https://ia801602.us.archive.org/11/items/Rick_Astley_Never_Gonna_Give_You_Up/Rick_Astley_Never_Gonna_Give_You_Up.mp4 -O pickle.mp4
}
$window = Invoke-Item ./pickle.mp4
