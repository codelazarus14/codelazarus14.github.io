---
title: Ranged Attacks and Blocked Paths
---

Halfway through working on an edit to how attack range/LOS are computed, I realized I hadn't put up my weekly post. Working on ranged attacks has taken up a majority of my focus, and although the visualization isn't quite perfect, I'm fairly happy with where it's at for prototyping more combat units.

Ranged attacks were going to be more trouble from the start, with more complexity in adjusting projectile speed and trajectory of arced projectiles through the air, and detecting collisions of falling objects with a camera projection that only simulates depth for drawing sprites.

Projectiles were quickly set up as a new piece of unit info, stored only on units with the Ranged type set, as a prefab on which various parameters for speed and maximum initial angle can be tweaked. I also added a parameter to indicate whether a projectile rotates to face the direction it's traveling in, but I'll get back to that later. Projectile math was also time-consuming, since I haven't taken a physics course in my life and wanted to be able to find nice-looking trajectories between points on an isometric plane, while also being able to configure the shape of the arc a projectile travels in. After a lot of fiddling around in Desmos and tweaking parameters, I've ended up with a fairly-robust method to allow ranged projectiles to travel along an arc at a fixed speed and damage their targets, if possible, on collision.

Rotating the projectiles to face their targets currently works for horizontal arcs, but looks weird for those in line with the camera's vertical axis (firing up or down the screen). That wasn't my highest priority to fix, and I'm also glad that with the way the trajectory calculation works out, the projectiles can be told to freeze and disable collision on hit --- a perfect way to prepare for making them stick into the ground with a custom sprite.

![A screenshot of the game view, showing a Gizmo-traced arc of dashed lines along a projectile's trajectory. The projectile looks like an arrow, and is also pointed to face in the direction it's currently traveling along the arc.](/../assets/images/blog/0015/rangedattack.png)

(I know that they're spawning at the unit's feet - I have yet to fix the offsets.)

After spending ages on that, I decided to take a break and quickly test something that I've been planning to add to the pathfinder for a while. So far, there's basically nothing that blocks units' paths besides each other, so I wanted to set the stage for creating new obstacles of all kinds (walls, structures, forests etc.) by having the pathfinder read from occupied tiles of a specific Obstacles-only tilemap. Fairly simple to test with some placeholder evil red tiles, and something I got done the day before family arrived to visit.

![A screenshot of the game view with debugging nodes enabled, showing that occupied tiles are marked with magenta spheres, and unoccupied are marked with yellow. The only occupied tiles shown are those marked with red tiles underneath in a separate, obstacles-only tilemap](/../assets/images/blog/0015/obstacles.png)

Obviously I was in the midst of further improvements when I remembered to write this post, and I'll keep working on that until I have a nice circular pattern of tiles to work with, rather than the boxy one I've shown off for unit detection before. I've been thinking that I ought to pivot back to art tasks as well, since it's been quite a while without any concerted effort. The other day I re-rendered a bunch of the basic unit sprites recently while testing out Blender options, trying to minimize the number of sprites per animation. It's nothing glamorous but once I feel like I have a better system in place, I'll probably commit more to actually creating a look for this game at last.