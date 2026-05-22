---
title: dron
repo: https://github.com/dodyya/dron
---

# dron

![2D editor and 3D configuration space side by side](/images/dron/editor-simple.jpg)

![3D configuration space with tetrahedral decomposition](/images/dron/cspace-3d.jpg)

![Complex scene with many obstacles](/images/dron/editor-complex.jpg)

An interactive motion-planning visualizer for a rotating polygonal robot.

Draw a polygonal robot and some polygonal obstacles in a 2D workspace, then pick
a start and a goal. Because the robot can translate *and* rotate, every
configuration is a point `(x, y, θ)`: `dron` builds the 3D configuration space,
decomposes it into a tetrahedral mesh, and searches that mesh for a
collision-free path. A 2D editor and a 3D view of the configuration space update
live as you edit.

Built with C++20, CGAL, and Qt6.
