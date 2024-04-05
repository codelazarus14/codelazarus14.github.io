---
title: Control Panel, New Doors and Terrain
---

Back on developing the game, I've ripped out some of the old flow stuff and spent time creating a new console for examining the stats of base pieces. Doors were moved out of corridors to merge the space to simplify water logic, and some new ~~set dressing~~ design pieces have found their way in too.

My proudest accomplishment is probably the new central control panel which generates a diagram of the base's layout using texture progress bars that represent different aspects of base piece stats. It'll take some time to flesh out the screen layout but I'm happy that I was able to get it working in a few days. And if I hadn't mentioned it before, base pieces now have structural integrity, so I also wired up some test connections for recovering integrity through repairs.

Corridors were too messy having an unnecessary split in the middle, considering that my new water plans emphasize how modular each piece needs to be relative to each other, rather than within themselves, so I moved the doors to the edges of open rooms. These new doors will also fulfill the old purpose of the Bulkhead/Outer Door, distinguished from the corridor's former inner door, to manage separating base pieces from each other and prevent a chain reaction implosion.

While messing around with the base piece UV maps to fix some distortion, I also decided to look into generating the terrain from heightmaps. I still need to figure out some way of doing most of the terrain in Blender ---in spite of the existence of the Terrain3D Godot plugin which I don't want to depend on--- but I don't think it's a limitation - I still have a lot to learn!

Also, widescreen! I got tired of developing in a resolution I probably won't intend this desktop game to be played in, so now it's 1600x900. Unfortunately, screenshots might look a bit more compressed on this blog.

![A screenshot of the new base control panel, showing several components as icons linked together with varying levels of base integrity and water volumes represented by a progress texture, oriented bottom to top.](/../assets/images/blog/0004/control_panel.png)

Now that the trickiest part is working, I can customize the layout in future using a 2D scene that this ViewportTexture is rendered from. I was considering even adding an interactable bit so that the player can mouse over sections and see tooltips.

![A screenshot of a room's interior at the intersection of two corridors, showing that they are now open spaces with the new bulkheads clipping into the walls on either side of each doorway.](/../assets/images/blog/0004/new_doors.png)

Ignore the floating water planes in the corridors, a side effect of me testing the water level representation through the control panel. The doors swing open and closed when a flag is toggled, which could be used in response to player interaction or automatically in response to critically-low integrity.

![A screenshot of a long, sloping oil pipeline riser raising out of the base and up, into the void beyond.](/../assets/images/blog/0004/riser.png)

I turned off the WorldEnvironment here using my debug menu to show the riser as it exists in the world, using my favorite shade of Placeholder Green, and on the sonar. You can also see a bit of the basic heightmapped terrain I was experimenting with near the bottom of the screenshot.