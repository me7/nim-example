import sdl2
import os

if init(INIT_VIDEO) == SdlError:
  quit("Couldn't initialise SDL")

var
  window: WindowPtr
  renderer: RendererPtr
  evt = defaultEvent
if createWindowAndRenderer(640, 480, 0, window, renderer) == SdlError:
  quit("Counldn't create a window or renderer")

discard pollEvent(evt)
renderer.setDrawColor 27,64,153,255
renderer.clear

renderer.setDrawColor 255,255,255,255

var point = [
  (260'i32, 320'i32),
  (260'i32, 110'i32),
  (360'i32, 320'i32),
  (360'i32, 110'i32),
]

renderer.drawLines(addr point[0], point.len.cint)
renderer.present
sleep(5000)