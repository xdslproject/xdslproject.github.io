---
date: 2026-10-21
title: Exporting LLVM IR from xDSL
authors:
  - sueszli
  - superlopuh
tags:
  - technical
---

xDSL is a compiler toolkit optimised for accessibility and low iteration time
during experimentation and development. Since the beginning, users have been
able to design their own abstractions and rewrites on them, but getting an
executable required going via `mlir-translate`, still requiring users to
download and install MLIR. We recently bridged this gap, allowing users to emit
LLVM directly in xDSL. We leverage
[llvmlite](https://github.com/numba/llvmlite), a package developed by the
[Numba](https://numba.pydata.org/) team, to convert xDSL modules in the llvm
dialect to llvmlite modules. Users of the Python API can do this with the
`convert_module` function, and the llvm IR can be printed via the command line
with `--target llvm`. This functionality allows users to more easily produce
LLVM IR files when prototyping, and unlocks JIT functionality which will
describe in a future post.

Please find a detailed user guide on the [documentation
page](https://docs.xdsl.dev/reference/backend/llvm/convert/).

We did a quick comparison of disk usage of xDSL + llvmlite and a full MLIR
installation using Homebrew on MacOS ARM64.

```bash
# xdsl + llvmlite
uv venv /tmp/lite
uv pip install --python /tmp/lite/bin/python "xdsl[llvm]"
du -sh /tmp/lite                                     # 127M - total venv
du -sh /tmp/lite/lib/python*/site-packages/xdsl      # 5.5M - xdsl
du -sh /tmp/lite/lib/python*/site-packages/llvmlite  # 112M - llvmlite

# mlir-translate
brew install llvm
ls -lh /opt/homebrew/opt/llvm/bin/mlir-translate  # 34K  - binary
du -sh /opt/homebrew/opt/llvm/lib/libMLIR.dylib   # 149M - dependency
du -sh /opt/homebrew/opt/llvm/lib/libLLVM.dylib   # 156M - dependency
du -sh /opt/homebrew/Cellar/llvm                  # 1.7G - full keg
```

The actual `mlir-translate` binary is just 34 KB but it’s linked against two
very large dylibs at around 305 MB that aren’t split by Homebrew, forcing you to
download the entire ~2 GB keg. The optional llvmlite dependency with xDSL on the
other hand is around 13x smaller and can be omitted from your build image.

We hope you find this functionality useful. Happy hacking!
