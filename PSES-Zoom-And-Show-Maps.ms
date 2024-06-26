/*
[INFO] 

NAME=Zoom And Show Maps In Viewport
TYPE=Prune Scene External Script
VERSION=1.0.0
AUTHOR=MastaMan
DEV=3DGROUND
SITE=http://3dground.net
DATE=20 March, 2024
THANKS=
REQ=
DESC=The script makes Zoom Extends and turns on the visibility of all textures in Viewport, when bulk processing files in Batch Prune

[SCRIPT]

*/

(
	struct pses_ZoomAndShowMaps (
		fn recursiveShowMaps om = (
			local c = getNumSubMtls om
			if (c >= 1) then (
				for i in 1 to c do (
					local sm = getSubMtl om i
					if (sm != undefined) do (
						recursiveShowMaps sm
					)
				)
			) else(
				try (showTextureMap om true) catch()
			)
		),
		fn run = (
			max tool zoomextents all
			max views redraw
			
			for o in objects do(
				if o.material != undefined do(
					recursiveShowMaps o.material
				)
			)
		)		
	)
	
	local pses = pses_ZoomAndShowMaps()
	pses.run()
)