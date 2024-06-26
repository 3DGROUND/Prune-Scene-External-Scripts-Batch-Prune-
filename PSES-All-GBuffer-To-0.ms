/*
[INFO] 

NAME=All GBuffer to 0
TYPE=Prune Scene External Script
VERSION=1.0.0
AUTHOR=MastaMan
DEV=3DGROUND
SITE=http://3dground.net
DATE=20 March, 2024
THANKS=
REQ=
DESC=The script returns the GBuffer value (in object properties) to the default value 0 for all objects, when bulk processing files in Batch Prune

[SCRIPT]

*/

(
	struct pses_AllGBufferToZero (		
		fn run = (
			objects.gbufferchannel = 0
		)		
	)
	
	local pses = pses_AllGBufferToZero()
	pses.run()
)