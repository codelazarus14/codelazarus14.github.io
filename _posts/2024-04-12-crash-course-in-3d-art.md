---
title: Crash Course in 3D
---

I've taken a break from code this past week to delve into 3D modeling, texturing, the works, since I plan on authoring a majority of the assets that will go into this game. 

The other day I spent a while redoing my asset creation pipeline, since I noticed the project folder was getting pretty messy. While exporting .glbs from a Blender project that contains all of the related assets for a particular area in the game, I realized it was duplicating all the shared resources, noticeably materials, per export. I went about fixing this by manually mirroring Blender and Godot materials and having them point to the same texture files. Blender clearly has the upper hand in this domain and I'd rather just work there and have it output .glbs that point to shared resources as necessary. I'm sure that this would be easier if I was using Godot's .blend file import but I moved away from that initially after realizing it was intended for matching every asset to a single Blender project.

There's not too much to show, since I spent the majority of the time working on an extremely detailed classic car tutorial that might have been a little out of date (>10 years old). It was still good practice and had some insights about detailing that were useful, but I should hunt around for better resources on texture work, along with geometry nodes since they seem pretty handy.

I'll have to keep working on this stuff for a bit while I start figuring out how to make stuff from scratch, but I wanted to have something ready for the post this afternoon. So I decided to make a quick replacement for the current supply cabinet placeholder in-game, using a submarine interior reference image I found online.

![A screenshot of a Blender project viewport, showing a solid color preview of a supply cabinet, with details for adding text labels to metal plates on the front of the container, a padlock and a checkerboard magenta and black texture on the inside.](/../assets/images/blog/0005/storage_locker.png)

I put a missing-texture card behind the door to remind myself to make that later when I come back to it, alongside everything else (materials, hinges, crumpled/bent metal details). But not bad for a quick effort.