# Prune Scene External Scripts (Batch-Prune)
A collection of simple scripts that can be executed during mass cleaning of 3D Max files in Prune Scene - in the section Batch Prune.

To run the scripts you will need licensed version Prune Scene:
https://3dground.net/en/prod/prune-scene-2180817


# How to download the script?
On this page, select the __PSES-***.ms__ script that interests you, click on it, in the page that opens, click Download Raw file

# How to add a script to a run list?
- Open Prune Scene
- Go to rollout Batch Prune
- Check the box next to Run Scripts
- Click on the List button next to it
- In the “External Scripts (.ms)” window that opens, add the necessary scripts
- Sort scripts by priority if necessary using the context menu

The scripts will be executed after the Prune Scene is cleared and before the scene itself is saved.

# Brief description of scripts
__All GBuffer to 0__ - The script returns the GBuffer value (in object properties) to the default value 0 for all objects, when bulk processing files in Batch Prune

__Remove All Layers__ - The script deletes all layers and moves all objects to layer default(0), when bulk processing files in Batch Prune

__Remove Cameras And Lights__ - The script deletes all cameras and lights, when bulk processing files in Batch Prune

__Zoom And Show Maps In Viewport__ - The script makes Zoom Extends and turns on the visibility of all textures in Viewport, when bulk processing files in Batch Prune

# Disclaimer
Some scripts remove objects or layers from the scene and can cause irreparable harm to your 3D Max files.

It is worth considering that before starting Batch Prune you are warned about all the risks that this process may cause.

The author does not bear any responsibility for possible damage to your *.max files!
