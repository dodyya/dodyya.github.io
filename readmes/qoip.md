---
title: qoip
repo: https://github.com/dodyya/qoip
---

# qoip

(qoi plus)
![demo image](https://raw.githubusercontent.com/dodyya/qoip/main/demo.png)

QOI (Quite OK Image) encoder/decoder in Rust.

Supports QOI, PNG, and PPM formats for conversion and viewing.

## Build & Run

```bash
cargo build --release
./target/release/qoi --help
```

### Examples

```bash
# Convert PNG/PPM/QOI formats
./target/release/qoi convert pics/img.png output/img.qoi

# View supported images
./target/release/qoi open pics/img.qoi output/img.png
```

## Notes

- Can run with pipes/stdin, e.g., for batch writing or use with other command-line tools.
- PNG support uses the `png` crate.
