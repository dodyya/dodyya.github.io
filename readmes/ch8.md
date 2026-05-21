---
title: ch8
repo: https://github.com/dodyya/ch8
---

<div class="demo-embed"><div class="demo-controls-row"><div class="mode-switch" data-frame="ch8-frame" data-param="rom"><button class="mode-btn is-active" data-value="octojam6title">octojam6title</button><button class="mode-btn" data-value="octo1">octo1</button><button class="mode-btn" data-value="octo9">octo9</button><button class="mode-btn" data-value="octo10">octo10</button></div></div><div class="demo-stage"><iframe id="ch8-frame" src="/demos/ch8/index.html?rom=octojam6title" title="ch8 CHIP-8 emulator" loading="lazy"></iframe></div><div class="controls"><div><span class="k">keypad</span> rows 1234 / QWER / ASDF / ZXCV map to the CHIP-8 hex keys</div><div><span class="k">click</span> the screen first so it captures your keystrokes</div></div></div>

# CHIP-8 Emulator

A CHIP-8 emulator written in Rust: the full instruction set, the 64x32
framebuffer, the 16-key hex keypad, and the delay and sound timers. CHIP-8 is a
tiny virtual machine from the 1970s, and writing an interpreter for it is the
classic first emulator project.

The ROMs in the picker above are entries from **OctoJam**, an annual CHIP-8
game jam. So the demo is running real homebrew games, written for a 50-year-old
imaginary console, compiled to WebAssembly and played in your browser.

Natively the emulator ran the CPU and the 60 Hz timers on separate threads; the
web build folds both into a single frame loop, since the browser has no threads
to spare.
