---
title: ECS and Sprite Ideas
---

I'm back again with a little news about the pathfinding stuff I was working on before, and the beginnings of the next non-code focused phase for the RTS game.

Not much has changed visually since I took about a week after my return to recover from jet lag and sort out some other business, but I picked up where I left off with Unity DOTS. I decided after looking into some tutorials about optimizing pathfinding that it might be worth experimenting with the DOTS packages to save myself the trouble of overhauling the OOP version in the long run. At the moment,there are still a few bottlenecks for performance but I was happy to get short-distance pathfinding with small groups of units down to sub-millisecond latency, less than would be noticed from Unity processing the mouse click.

In the cleanup phase, I also added a few more tools to the inspector for mobile units and their pathfinding grid manager, along with a new waypoint marker prefab that is currently spawned per-unit and will be helpful when debugging group pathfinding in the future. Currently, a group of units all copy the same destination position without accounting for the necessary offsets that they would need to end up with depending on whether they have a desired formation like in Age of Empires, or even bunching up around a single point.

Although I still want to make improvements to the pathfinding to incorporate some crucial stuff like dynamic obstacle avoidance, I also wanted to test out an idea for creating unit sprites. I wasn't really going off of anything besides intuition and my feeling about how old game assets were created, without much research, but I'm trying to approximate a low-res, old CG look by exporting low-res rendered animations from Blender. Just yesterday I finished my first rigged 3D model which could probably use some improvement, but gives me enough to test out whether I should continue down this path for creating game assets.

By the way, I did get a bit sidetracked with yet another (tiny) project this week that has nothing to do with the current games. It might end up on here eventually but I'm hoping it won't take more than a week or so anyway, and it shouldn't take focus away from this game either.

![A screenshot of the new waypoint marker and a small cyan line drawn from a selected unit in motion towards its target, indicating its next pathfinding destination en route.](/../assets/images/blog/0009/waypointmarker.png)

Yes, it's just a recolored Unity dropdown sprite, and it doesn't look too great on dark backgrounds. It's good enough for debugging purposes.

![A screenshot of the Unity scene view and inspector window side-by-side, showing that the controlled unit is powered by a hidden Entity with its own position and path following information.](/../assets/images/blog/0009/ecs.png)

Converting most of the code into Burst-compatible structs and using the job system to schedule pathfinding jobs was definitely worthwhile. I am very grateful for the amount of documentation and tutorials on using the ECS, which I hadn't even heard of before this project! Funny how history seems to repeat itself with all the data-oriented stuff these days (down with OOP tyranny!)

![A screenshot of the Blender main viewport, showing a primitive 3D character model with an attached armature, its root bone colored red.](/../assets/images/blog/0009/blender.png)

I've never studied anatomy nor looked at a reference for this thing I whipped up in half an hour, but it's nice that it didn't turn out horrendous for testing purposes. In the end, most of these will be viewed in low-resolution from like 100 feet up, and I just want to see if the general effect matches what I have in mind.