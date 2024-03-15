---
title: So It Begins...
---

I've decided to start a dev blog since I've seen some advice going around that keeping one of these is great for tracking progress and motivating yourself to work on features. 

I'm not entirely sure how well I'll keep this up but I'll try to stick to it for at least a week or two. I don't know how frequently I plan on updating this blog. Weekly would be nice, assuming I'm not too busy and have something to show.

My current project is a much larger undertaking than my previous efforts in the Godot engine: a large-scale survival adventure game set at the bottom of the sea. I've thought about working on something like this for a while now, as I've always been a big fan of games like Barotrauma and Subnautica. These games are fascinating and have contributed to my love for learning about the ocean, but I've always noticed a weird kind of tension in survival as a genre. Despite being set in complex and interesting worlds, I've noticed that a lot of survival games tend to guide the player towards seeing their environment as an easily-exploited, infinite supply of craftable materials. I wanted to create something that would capture the uncertainty of darkness, of both the fragility and remarkable resilience of life, and of the potential for both environmental degradation and renewal. My plan is to combine some of the horror-focused elements and an appreciation for the unique and complex ecosystems of the deep ocean and the relationship between humans and their environment.

I've spent a lot of time so far coming up with ideas and researching possibilities for the setting, gameplay mechanics and narrative structure. So far I've prototyped parts of the player's starting habitat and made a framework for adding items like the (placeholder) handheld sonar. It's only been about a month, and I have a bunch of work to do to make the base ready for adding dynamic water levels in rooms, add specific devices like sonar, oxygen generators and pumps, or start creating the terrain around the base from which the rest of the game will expand.

It's been kind of fun picking up more skills in game development and fitting all the pieces together, although I haven't been getting very attached to my designs. It's kind of hard to determine what kind of feeling or visual style I want when nothing seems worth committing to yet. In the future, I'm hoping that spending some more time on research and drawing concepts will help guide my hand a bit.

Here's a few screenshots of the work so far:

![A screenshot of the inventory user interface.](/../assets/images/blog/0001/inventory.png)

I don't know exactly what kind of inventory system I plan on using yet but I've settled on letting the player carry two things at once in their left and right hand. It's just a normal grid-based thing for now with no System Shock tesselating or anything. I added and then turned off stacking, since I don't want to encourage hoarding of anything you can't fit in a pocket (up to some reasonable amount).

![A screenshot of the habitat interior, an empty white shell with a few boxes representing text logs and storage containers.](/../assets/images/blog/0001/interior.png)

Home sweet home.

![A screenshot of the airlock interior as it fills with water during pressurization, the water level is almost even with the player's eyes.](/../assets/images/blog/0001/airlock.png)

It's hard to see but the rectangle in the back is the placeholder pressure suit station, for whatever I plan on doing with it beyond using it as a coat rack. Not wearing the pressure suit while the airlock fills with water is currently fatal.

![A screenshot of the player welding with a stick electrode, with the far end lit by a bright light and emitting sparks. The weld puddle is followed by a trail of red discs representing the welded seam.](/../assets/images/blog/0001/welding.png)

Welding is the only repair mechanic I've worked on so far since it seemed to be the most complex, so naturally I threw myself into it. I've been working on the basics of following a seam with the mouse, just to have a little bit more realism than the usual magic healing torch I've seen in games. Along with the many fun ways of dying and sustaining injury, I hope on incorporating temporary blindness from welding without a mask (as seen above).

![A screenshot of the player outside the base with the handheld sonar item. The base is visible clearly in the sonar display, while the player's vision is partly obscured by the darkness.](/../assets/images/blog/0001/sonar1.png)

![Another screenshot of the player with the handheld sonar. The player's vision is almost entirely obscured by darkness, while the sonar screen reveals a small path of floating cubes extending outward from their position.](/../assets/images/blog/0001/sonar2.png)

The strange object with the fuzzy display is meant to be a handheld sonar which I threw together in Blender to test viewmodels. I really like the potential of the mechanic and feel like it'll be worth making this into a limited resource (battery-powered?) or turn it into a passive sonar. I plan on putting one setup in front of the player's base, hooked up to a display inside rather than adding windows, since the player's environment will also be relatively low-light in keeping with their acclimation to the abyssal environment.