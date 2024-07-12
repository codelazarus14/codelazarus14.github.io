---
title: Where To Begin...
---

So I've been a little busy this week. Since the last post, I've worked on a variety of different things to augment my rather austere prototype and put placeholders in for future modifications to: sprite outlines, tile texturing, unit affiliations and combat, among other things.

I immediately got started with a couple of basic shaders to get back into HLSL, namely one for creating a halo at the base of a selected unit's feet and another for sprite outlines. Neither are fully complete but are great proofs of concept for what I'll be working with later on, and a major improvement over using the solid placeholder sprites to signify selection or camera-tracking before. Later, I plan on using the outline as a silhouetting feature for when units move behind obstacles rather than drawing it with the regular sprite. 

![A screenshot of a unit's prefab being edited in the Scene view, showing the unit surrounded by a single-pixel white outline tracing its silhouette.](/../assets/images/blog/0012/outline.png)

![Another screenshot of the prefab in the Scene view, with the main sprite being hidden to show a small, oval selection halo where the unit's feet were previously drawn in front.](/../assets/images/blog/0012/selection.png)

My new game system focus was going to be combat. Unit pathfinding still needs some improvement to bumping and avoidance, but it's pretty good at getting units where they need to go, which was good enough for my purposes. I started by creating a new ScriptableObject type for team or faction allegiance, currently called Affiliations, including team colors and known hostile relationships with other factions. I plan on using affiliations as the foundation of unit interactions to determine what units start off as hostile or friendly towards each other, and then add in specific behaviors based on those relationships (fighting, healing, talking etc.) Along the way, I made some improvements like adding a new collider to determine unit's bounding boxes separately from their feet, so the latter can be used to pack units more tightly together while pathfinding. 

![A screenshot of more prefab editing, this time with the full prefab visible and two separate colliders visible. One collider is a green rectangle drawn around the edges of the unit's sprite, while the other is a smaller, isometric diamond at the bottom of the sprite, around the unit's feet.](/../assets/images/blog/0012/colliders.png)

Meanwhile, I also began looking into how to make the world's tilemap use world-space textures. The aesthetics of the original games I'm taking inspiration from, and which I feel no reason to deviate from, don't use textures per-tile, so I started with a basic one to get a single texture to tile across world space. Nothing special yet, but I plan on improving it to soften edges between different ground textures and create more organic-looking terrain. Of course, it's also not fair to demonstrate it with a less-than-ideal free image I downloaded to test tiling, and 2 other solid-color tile variants. I would have liked to use rule tiles, but I've heard that it still requires more effort to get different types of tile to talk to each other, but I could probably look into it a bit more in future.

![A screenshot of the game view, showing a new grass texture tiled across the space of grass-tiles in the world, rather than being used per-tile.](/../assets/images/blog/0012/worldtiles.png)

Returning to the combat, and now with the rest of the visibly-new stuff out of the way, my latest and greatest addition has been a basic system for making units passively engage each other on sight. After walking within each other's line-of-sight, determined by a square-width range of tiles shown by the outer colored isometrix boxes below, the units will wait to become idle (not moved by the player), pause and then engage the first target they see in range. Currently I went ahead and added a basic melee damage mechanic, making use of the previously-unused healthbars I made a while back. This has not produced any major issues with units being killed twice or dying simultaneously, which is comforting to know with minimal testing. 

Melee attack range can be increased to allow units to hit each other at longer distances, and while researching this mechanic's implications I learned that Kamayuks are the only melee unit in AOEII that can hit through walls. This seems to be intentional, so unless it becomes a problem for me I'm not bothered to try and check if a melee unit should be able to hit something as long as it's in range.

![A screenshot of the game view, with two grey units attacking a green, presumably hostile unit. The green unit's healthbar is the lowest, followed by one of the grey units, with the latter's companion having full health. Boxes drawn around their feet and intersecting each other show that all three are within both view and attack range of each other.](/../assets/images/blog/0012/unitrange.png)

![A screenshot of the game in action, with two grey units attacking a green, presumably hostile unit. The green unit's healthbar is the lowest, followed by one of the grey units, with the latter's companion having full health. Boxes drawn around their feet and intersecting each other show that all three are within both view and attack range of each other.](/../assets/images/blog/0012/unitfight.png)

The inner box (cyan) represents the unit's attack range in tiles, while the outer (team colored) is the visible range for detecting hostile units. Whenever a hostile unit comes within one of their ranges, the box becomes red. This has been fairly straightforward to debug, and I was surprised to see how many small parameters for delays (reaction, delays after moving, arriving in combat position to fight, attack intervals) will need to be tweaked to make the combat feel right. I might move to using something more approximately circular or diamond-shaped based on my needs. Pathfinding is holding up, except for the aforementioned issues, so that might be next up to fix before I need to start working with more complex obstacles or unit formations.

I like spreading my efforts across all these different features, not the least because most of them were front-facing and very easy to measure progress by. I can hope next week will be equally productive. On another note, I just found out that my blog paginator script isn't working properly anymore, so I'll probably get on that this afternoon. Until next time!