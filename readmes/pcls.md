---
title: pcls
repo: https://github.com/dodyya/pcls
---

# pcls

![Demo gif](https://github.com/dodyya/pcls/releases/download/demo-assets/demo.gif)

A particle simulation. Tens of thousands of Verlet particles collide over a uniform spatial grid, each carrying a hue: similar hues attract, opposite hues repel. Two implementations live on two branches.

## `master` — CPU

Force evaluation and collision resolution run across every core with `rayon` and lock-free atomics. Particles render as OpenGL point sprites through `glow`.

```bash
cargo run --release
```

## `cuda` — GPU

The same simulation as CUDA kernels, rendering through OpenGL via CUDA-GL interop, so particle positions never round-trip through CPU memory. Needs an NVIDIA GPU, the CUDA toolkit, and [cuda-oxide](https://github.com/NVlabs/cuda-oxide).

```bash
cargo oxide run --release
```

## Controls

- Left click (or drag): spawn particles
- Right click: clear
- Space: toggle gravity (radial vs. downward)
- M: toggle the hue force
- D: toggle the donut boundary
- S: halt all motion
- Q: quit
