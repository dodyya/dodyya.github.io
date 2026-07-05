---
title: venet
repo: https://github.com/dodyya/venet
---

# venet

<div class="demo-embed"><div class="demo-stage"><iframe src="/demos/venet/index.html" title="venet" loading="lazy" style="aspect-ratio: 16 / 10;"></iframe></div><div class="controls"><div><span class="k">generate</span> drop a new heap</div><div><span class="k">seed</span> type a number and press enter to reproduce a run</div></div></div>

I saw Bernar Venet's *When Steel Dreams of
Code* exhibition in London and really liked it. I did not write this code manually. [(Exhibition)](https://www.waddingtoncustot.com/exhibitions/240/)

<p>
  <img src="https://raw.githubusercontent.com/dodyya/venet/master/img/purple.jpg" width="32%" alt="vivid look rolled purple, seed 93">
  <img src="https://raw.githubusercontent.com/dodyya/venet/master/img/teal.jpg" width="32%" alt="vivid look rolled teal, seed 48">
  <img src="https://raw.githubusercontent.com/dodyya/venet/master/img/white.jpg" width="32%" alt="galvanised look, seed 4">
</p>

## Build & run

```sh
make                 # cc -O2 -o venet venet.c -lm   (libc + libm only)
./venet              # random seed from the clock; writes out.bmp
./venet 12345        # reproduce a specific accident
./venet 12345 a.bmp  # ... to a named file
make wasm            # wasi-sdk clang -> web/venet.wasm, run by web/index.html
```

Also included is a little script I have my Mac set to run on startup to generate and set a new wallpaper.
