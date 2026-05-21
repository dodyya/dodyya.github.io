---
title: flo4
repo: https://github.com/dodyya/flo4
---

<div class="demo-embed"><div class="demo-controls-row"><div class="mode-switch" data-frame="flo4-frame" data-param="mode"><button class="mode-btn is-active" data-value="play">Play it</button><button class="mode-btn" data-value="solve">Watch it solve</button></div><div class="mode-switch" data-frame="flo4-frame" data-param="res"><button class="mode-btn" data-value="6">6&times;6</button><button class="mode-btn is-active" data-value="9">9&times;9</button><button class="mode-btn" data-value="12">12&times;12</button></div></div><div class="demo-stage"><iframe id="flo4-frame" src="/demos/flo4/index.html?mode=play&amp;res=9" title="flo4" loading="lazy"></iframe></div><div class="controls"><div><span class="k">play</span> click and drag from a colored dot to draw its flow; right-click clears a cell</div><div><span class="k">solve</span> the CSP solver runs on its own, filling and backtracking through the search</div></div></div>

# Flo4 - Interactive Flow Free Puzzle Solver and Player

Flow4 is a Flow Free puzzle implementation in Rust, featuring an interactive game and an advanced constraint satisfaction problem (CSP) solver. It includes a Python web scraper for gathering puzzle datasets.

## Usage

**Interactive Play:**
`cargo run --release`

**Controls:**

- **Draw**: Click and drag to connect matching colors.
- **Reset**: Right click.

**Data Collection:**
`python src/flow_stealer.py`

## Technical Details

- **Language**: Rust (Game/Solver), Python (Scraper)
- **Graphics**: `pixels` crate for direct pixel manipulation.
- **Solver**: Backtracking with constraint propagation, forward checking, and heuristic optimization.
- **Puzzle Format**: Text-based, mapping colors to letters (A-Z).
- **Inspiration**: Solver techniques inspired by [Matt Zucker's Flow Solver](https://mzucker.github.io/2016/08/28/flow-solver.html).
