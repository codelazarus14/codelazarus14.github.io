---
title: More Base Work and Rethinking Water
---

A few days after my last post I became extremely busy and found little time to work on the game until this week. Although I'm still in the midst of figuring out what all I need ready for a functional player habitat, I've redesigned my plans to avoid some major headaches down the road.

On top of losing time in the previous week, I also ended up spending a lot of time more recently on adding water flow between base components. Only a few days ago I realized that this system was going to take much longer to prototype than would justify its marginal usefulness in the game so far. In the short term, I've pivoted away from being concerned with flow and water mechanics and more focused on the nature of water pressure as an imperceptible but ubiquitous threat in the habitat. Instead of worrying about whether I could make good enough looking water, I've decided to spend more time on systems that engage the player with structural integrity, preventing and containing breaches and mitigating disaster to avoid a catastrophic chain-implosion.

I also started to look into fixing the default material eyesore in the base, starting with some new textures, and today I've begun work on a central display/control panel for monitoring the base's components.

![A screenshot of the new textures slapped onto the flat walls and ceiling of a room, with the solid floor replaced with a transparent metal grate.](/../assets/images/blog/0003/new_textures.png)

A small showcase of the massively-revamped interior. I put in a grate floor so that the water (visible underneath from the reflection of the light above it) can be part of the ambient environment, indicate low amounts of water in a room etc. 

![A screenshot of a work-in-progress control panel screen and a diagram view of the base componets.](/../assets/images/blog/0003/control_panel_wip.png)

Currently I've just gotten this 2D layout working with hardcoded base pieces but with a little more effort it should be able to pull from the real base layout and display things like the water level and structural integrity of each component.