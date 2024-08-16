---
title: Interactive Unit Previews, And Some Other Cleanup
---

Rather than picking up another complex set of features this week, I decided it would be a good time to slow down and rework some of the issues that I'd scattered notes on about the code, and did manage to get quite a bit done along the way. I did get around to implementing interactive unit previews from the HUD, allowing a single unit to be picked out of a group via the UI.

On the way to implementing the new previews, I attempted to redesign the UI utilities several times before settling on a new delegate format for handling different UI element bindings. While trying to keep parity between dynamic and statically-generated UI elements, I did lose some of the caching advantage of the latter, but I preferred having the code be consistent and less complicated to look at while developing new UI features. Using the new system, I then added functionality for picking units from a selected group of 1 or more, which causes the selection to update and preview the sole unit selected (another feature mimicking AoE in the meantime). 

Before:

![A screenshot of the game viewport and UI, showing a group of selected units in the game world with elliptical halos beneath their feet, mirrored on the UI as a row of preview icons with their corresponding sprites and healthbars. One unit's icon is slightly more transparent than the others, indicating that it is currently being selected from the UI via a pointer.](/../assets/images/blog/0017/selectingunit.png)

Windows doesn't want to capture my cursor, but the one that looks like it's being picked on the UI, in fact, is. 

And after:

![A screenshot of the game viewport and UI, showing the previously picked unit as now the only selected unit in the game and UI, with the more detailed preview of unit information displayed for the single selected unit in the same panel that the group previews had been displayed in before.](/../assets/images/blog/0017/unitselected.png)

There were several other changes, such as making the fog system use the camera's affiliation setting instead of its own, fixing the panning threshold bounds to be constrained to the viewport and not include the UI (which you can see in the screenshots above). Lots of refactors, and still quite a few to come. I'll be splitting my time between this and returning to an old, albeit still Unity, project for the foreseaable future.

It's crazy to think that my prototype is finally getting far enough along for me to consider, y'know, game design. With gameplay and characters and levels. Hm. Unless I find more technical details to keep pushing that off... or maybe giving the UI some more stuff to display.