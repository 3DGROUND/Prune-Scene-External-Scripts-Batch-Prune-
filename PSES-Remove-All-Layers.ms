/*
[INFO] 

NAME=Remove All Layers
TYPE=Prune Scene External Script
VERSION=1.0.0
AUTHOR=MastaMan
DEV=3DGROUND
SITE=http://3dground.net
DATE=20 March, 2024
THANKS=Carlos Campo
REQ=3D Max 2016 and higher
DESC=The script deletes all layers and moves all objects to layer default(0), when bulk processing files in Batch Prune

[SCRIPT]

*/


(
	struct pses_RemoveAllLayers (
		fn get3DsMaxVersion = (
			v = maxVersion()
			v = 2000 + ((v[1] / 1000) - 2)
			
			return v
		),
		fn run = (
			-- Works from 3Ds Max 2016
			if (get3DsMaxVersion() >= 2016) then (		
				for i in LayerManager.count to 1 by -1 do (
					local l = LayerManager.getLayer i
					if (l == undefined) do continue
					LayerManager.deleteLayerHierarchy l.name forceDelete: true
				)
			) else (
				print "[Prune Scene External Script] Error! - Remove All Layers - Works only on 3D Max 2016 and higher!"
			)
		)		
	)
	
	local pses = pses_RemoveAllLayers()
	pses.run()
)