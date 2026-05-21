---
title: ch8
repo: https://github.com/dodyya/ch8
---

<div class="demo-embed"><div class="demo-controls-row"><div class="mode-switch" data-frame="ch8-frame" data-param="rom"><button class="mode-btn is-active" data-value="octojam6title">octojam6title</button><button class="mode-btn" data-value="octo1">octo1</button><button class="mode-btn" data-value="octo9">octo9</button><button class="mode-btn" data-value="octo10">octo10</button></div></div><div class="demo-stage"><iframe id="ch8-frame" src="/demos/ch8/index.html?rom=octojam6title" title="ch8 CHIP-8 emulator" loading="lazy"></iframe><span class="k">

# CHIP-8 Emulator

A <a href="https://en.wikipedia.org/wiki/CHIP-8">CHIP-8</a> emulator written in Rust: the full instruction set, the 64x32
framebuffer, the 16-key hex keypad, and the delay and sound timers. CHIP-8 is a
tiny virtual machine from the 1970s, and writing an interpreter for it is the
classic first emulator project.

The ROMs in the picker above are entries from **OctoJam**, an annual CHIP-8
game jam. So the demo is running real homebrew games, written for a 50-year-old
imaginary console, compiled to WebAssembly and played in your browser. I did not finish implementing user inputs, so all demos you see are static.
