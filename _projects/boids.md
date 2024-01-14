---
title: OpenGL Boids
thumbnail: assets/images/boids.png
repo: https://github.com/codelazarus14/boids-opengl
---
![Looping GIF of the boids in action](../assets/images/boids-cropped.gif)


In high school I had written a VPython demo of a flocking Boids simulation for a precalculus project. While I had enjoyed assembling the logic, the graphics library had handled pretty much all of the difficult aspects of rendering. 

After having spent time working in Unity and being confused by the mysterious functionality of shaders and material systems in fully-fledged game engines, I began looking into creating my own 3D graphics from scratch in C++, along with expanding the boids program into 3D.

The new boids were modeled in Blender and use a custom shader, a mix of subtle specular lighting and a color gradient controlled by their proximity to large groups.