---
title: pcls
repo: https://github.com/dodyya/pcls
readme: /projects/pcls.html
language: Rust
image: pcls.jpg
---
A multithreaded Verlet particle physics simulation. It pushes 50,000+ particles
at 60 FPS using a uniform-grid spatial hash for `O(n)` collision detection and
lock-free atomics for the parallel update step.
