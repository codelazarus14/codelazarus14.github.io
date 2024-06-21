---
title: Animations and Avoidance
---

After some research, I was pleased to discover that my intuition about making the sprite assets last week was on the right track. I've spent some time adding tools and planning for more complicated behaviors in the pathfinding system, like units being able to move around each other and also group up in formations, alongside other tools and tweaks.

I'm mostly reading off my commit history for the changes this time rather than going off the top of my head for what has changed, since I focused on shifting between tasks to keep myself engaged at the expense of my memory of what was worked on and when.
After rewriting the camera panning script to use some new logic for snapping radial directions to increments rather than using a continuous range, I added some basic avoidance behavior to units on top of the new pathfinding logic. Right now, it needs quite a bit of work to keep them moving in the same direction and stop them from getting stuck on each other, but it's a decent start. I then decided to add in the basic healthbar UI, with an opportunity to practice my custom inspector knowledge in combination with sprite masks.

The main visual difference this week is the new animations using a series of test renders I did of the character model from last week. It turns out I was right about most of the sprites in the games referenced being low-res renders of 3D models, and after figuring out how to set up a shadow catcher shader in Blender and setting up lighting and an angle-snapping camera, I should have a reliable setup for creating new sprites and animations. The only foreseeable issue I've encountered is the amount of noise produced in some of the renders, so I might need to look into cleaning that up a bit on either Blender or Unity's end.

My latest changes, along with some in-progress work on the aforementioned pathfinding behaviors, were to the UI. I initially hadn't really thought about where I should build the HUD when I created the project, but I figured that for improving flexibility and to reduce the number of objects in the scene view, it would be worthwhile to migrate it to the UI Toolkit. On top of migrating the interface, I added some logic for populating a list of key bindings from an input actions asset, and replaced the previous GUI rectangle with a 9-slice sprite for future improvement. It was a pretty efficient conversion and I'm glad to be able to use styling selectors rather than individually setting the properties of all the old UI objects.

So, next up will probably be more of the same, pathfinding edits perhaps, and more features. I've been sitting on a bunch of concepts that should probably make their way into the Unity project soon, if not just to remind myself about them without having to look back at my notes. I hope I do get around to them soon, since it'll offer me an opportunity to explain more of my ideas and the plans I have in store beyond the mechanical foundations.

![A screenshot of the Blender viewport, showing a basic rigged character model standing on a small shadow-catching plane, a couple of lights and a camera facing the model at about a 3/4 angle.](/../assets/images/blog/0010/blender.png)

The lights, camera and everything else is set up in its own collection with a timed sequence of snaps between the 8 cardinal directions/perspectives for making animated sprites in the top-down isometric style. It's kind of hard to show that off with just pictures but the fruits of my labor are apparent in the next image.

![A screenshot of a portion of the game window in Unity, showing four units standing at different positions and facing away from each other in different directions to show off the new facing sprites. They also have different health values, as indicated by the green-to-red healthbar chunks above their heads.](/../assets/images/blog/0010/units.png)

The healthbars were instantly nostalgic and it's such a basic setup that I honestly don't mind working with it until I figure out something more aesthetically specific/pleasing. If I don't, then so be it. Also, the shadows rotate with them... just like the old days.

![A screenshot of a portion of the game window in Unity, now showing off a procedurally-generated list of keybindings used for debugging purposes.](/../assets/images/blog/0010/controls.png)

I haven't touched Unity's InputSystem much since working on the camera, but it's been really encouraging to look through the docs and see how much support there is for live rebindings and overrides, switching devices and control schemes and all else. I probably don't need too much out of it yet, but something to look forward to.