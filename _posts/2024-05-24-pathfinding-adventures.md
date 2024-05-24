---
title: Pathfinding Adventures
---

I thought I'd give a little preview of what I've been working on, since it's been kind of a fun mix of technical challenges and leveraging a lot of Unity's newer tools. So far, my RTS-style prototype supports a bunch of basic user interactions like unit selection, camera panning and moving units around.

I started with the camera, thinking it was probably the most useful feature to nail down before working on other game mechanics since it would be crucial for testing and debugging everything else. I got really into designing a custom inspector for it to control the zoom level, thresholds from the edge that determine when the mouse is far enough over to trigger camera panning in the direction of the mouse, and running tests from the editor UI. Since then, I've started playing with Unity's tilemap system which is thankfully not as much of a burden on my efforts as Godot's 3D gridmaps were to my underwater game's levels, and adding basic components for selecting and moving characters on an isometric game world.

The last couple days were spent brushing up on my memory of graph theory and researching old top-down games to find out what kinds of pathfinding methods they used. The most common implementation at the core of every one I could find is still A* search, which was previously only a hazy memory from a poorly-taught algorithms class in college. So far, I've just thrown together a working albeit poorly optimized pathfinder with A* and set up some parameters to control the generation of a node graph from tilemap data.

Here's a few more screenshots of the work so far. I'm glad that I can still enjoy working on games for this long in my spare time and look forward to working on this in the immediate future. I won't post an update here for next week though, since I'll be out of the country for a week and a half.

![A screenshot of a custom inspector tab for a Camera Controller component in the Unity editor. The inspector features dropdowns related to setting min and maximum zoom levels, adjusting camera panning and the rectangle drawn onscreen while box selecting.](/../assets/images/blog/0008/camera.png)

Although it's not as convenient as Godot's export variables, I like the amount of control editor scripting gives you, and it's nice to be able to get under the surface of the editor a bit more than I was comfortable to try out in the other engine. These are all properly serialized and synced up to custom handlers so that you can't drag the minimum slider above the max, clamps the zoom level, the toggles update based on selection mode etc. so it was mostly just an exercise in tool development.

![A screenshot of the RTS game view with a grid of yellow circles, representing pathfinding waypoints, spread across the screen.](/../assets/images/blog/0008/nodes.png)

Since converting from tile to world space doesn't map to the center of the tile, unlike going from world to tile, it took me a while to get the right offsets. The little red line is the straight-line heuristic to a cursor position (which I guess Windows doesn't capture on the screenshots), and the white is the generated path. And yellow was the best contrasting color I could think of, since I'm already starting to exhaust all of the default `Color` values in my debugging. 

![A screenshot of the RTS game view showcasing the select box in action: two units are currently inside the select box and being underlined by red ovals, while the third remains unselected on the left side of the box.](/../assets/images/blog/0008/select.png)

I also added support for multiselect or shift-clicking as an alternative to dragging a box to select groups. It brought with it the bonus ~~bug~~ feature of allowing you to invert a group of units' selection while dragging across them. So if I both held the multiselect button and box dragged the group again, the one unit that isn't selected would become selected, while the other two toggle off. I suppose this could be useful; it certainly would have been nice to have sometimes in my AOE days while micromanaging my villagers.

![A screenshot of the RTS game view showing a unit pathing towards a target position. The target position is represented by a cyan sphere and a line drawn between it and the unit's current position, alongside a blue line slightly offset from the cyan one that represents where the unit is currently looking.](/../assets/images/blog/0008/movement.png)

I'm mostly using the blue line as a reference for where the turns are in the isometric grid as it paths through it, but I also plan on using it to debug the 8 different sprites/walk cycles that will be swapped out based on what direction the unit is looking. I'll probably get back into Blender soon to figure out how to replicate the old CGI-sprite hybrid look. These are just made using gizmos and the basic UI textures that come with the Unity 2D package.

That's all for now, and I'll probably get back to this project sometime in early June.
