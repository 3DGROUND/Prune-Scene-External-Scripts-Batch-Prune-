/*
[INFO] 

NAME=Remove Cameras And Lights
TYPE=Prune Scene External Script
VERSION=1.0.0
AUTHOR=MastaMan
DEV=3DGROUND
SITE=http://3dground.net
DATE=20 March, 2024
THANKS=
REQ=
DESC=The script deletes all cameras and lights, when bulk processing files in Batch Prune

[SCRIPT]

*/

(
	struct pses_RemoveCamerasAndLights (
		fn run = (
			delete cameras
			delete lights			
		)		
	)
	
	local pses = pses_RemoveCamerasAndLights()
	pses.run()
)