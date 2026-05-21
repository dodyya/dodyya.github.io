---
title: karp
repo: https://github.com/dodyya/karp
---

# karp

A compact Rust port of Andrej Karpathy’s “micrograd” — a tiny reverse‑mode automatic differentiation engine.

## Usage

Build and run the demo:

```bash
cargo run
```

## Add as a library

To use `karp` in your project:

```toml
[dependencies]
karp = { path = "../karp" } # Or git url
```

Example usage:

```rust
use karp::Value;

fn main() {
    let x = Value::from(2.0);
    let y = Value::from(-3.0);
    let z = &x * &y + &x; // operations build the graph
    z.backward(); // backpropagate
    println!("z={} dz/dx={} dz/dy={}", z.data(), x.grad(), y.grad());
}
```
