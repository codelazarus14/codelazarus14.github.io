---
title: Building the Base
---

This week I've been working on a system for creating the player's habitat. Originally, I had been building out the base with Godot's GridMap nodes, but as I reviewed some of the planned features for indoor spaces, I realized that I would need something more practical for iteration.

GridMap had worked well while I was mostly sticking together pieces of static level geometry, and while it can be used for instantiating scenes from placeholders, I was growing tired of having to write custom instantiation rules for each scene type rather than just placing them in the same scene directly.

Most of the problems come from the second part of what I've been working on - defining continuous volumes of open space through which water should be able to flow through (or at least come to rest). The base's layout will become crucial to a future water flow manager that can manage volume, pressure and the other effects of water on base systems. Due to the variety of different pieces (rooms, corridors, airlock etc.) and how they can be laid out, I wanted to derive as much information as possible for water simulation purely from the position and orientation of scene instances in one layout.

I started by generating a grid representation of each base piece instance and its location, and from there began creating the logic for individual volumes of water within a space. The water volumes store a list of connections to adjacent volumes, which are used to define a ~~redundant~~ bidirectional graph both within and between habitat spaces. From there, I've currently set up a quick DFS checker for contiguity between connected volumes, to be run whenever something like a door closing or a pressure hull rupture occurs, so that a future water manager will calculate the new distribution of water across the connected volumes and its effects on the environment.

Since most of this week's effort was spent on preparing the game for the introduction of water, pressure and damage/repair mechanics, I haven't got much to show off other than a few screenshots of the process. Hopefully I'll get back to something more fun before the next post.

![A screenshot of the base's layout from above, showing several rooms and corridors connected together in the Godot 3D viewport.](/../assets/images/blog/0002/base-layout.png)

This is just a picture from the viewport of a sample base layout from a bird's eye view, since I think a visual aid to the paragraphs above would be useful. The current solution should be easy enough to extend to 3D spaces with multiple floors.

![A screenshot of a room inside the base that is currently flooded with water.](/../assets/images/blog/0002/swamped.png)

Thankfully from the interior you can't see all that water clipping outside. Which is ideal. The system also needs to be able to handle different interior volumes, from the tiny corridors to the larger interiors of rooms and the airlock.

![A screenshot of the Godot debugging console. The spaces between lines indicate groupings of interior water volumes, such as Room, Corridor2-OutWater, Corridor-OutWater and Corridor-InWater. Below this is a list of habitat rooms and their connected water volumes, formatted such as: '0, 2: Room3, Neighbors: Corridor2, Airlock'.](/../assets/images/blog/0002/debugging.png)

Here's some debugging output from the process. I manually removed a couple of connections to force the checker to divide the space up a little, and everything is going swimmingly. Ignore the corridors appearing to be connected to themselves, which is due to me not bothering to add on the names of the child components (like in the group lists above.. ehhh).