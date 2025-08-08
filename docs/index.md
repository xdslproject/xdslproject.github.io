---
title: xDSL
hide:
  - navigation
  - toc
---

xDSL is a **Python-native Compiler Toolkit**. Design your own (domain-specific) compiler by mixing predefined IRs with your
custom IR abstractions. Always optimize at the optimal abstraction level by
lowering programs through multiple levels of IRs. Connect with the LLVM/MLIR
ecosystem while benefiting from Python's productivity.

<div class="grid cards" markdown>

-   :material-clock-fast:{ .lg .middle } :material-language-python:{. lg .middle } __Rapid development__

    ---

    Uses your existing Python skills to build compilers, fast.


-   :material-raspberry-pi:{ .lg .middle } __Low requirements__

    ---

    Run xDSL on a single board computer if you want to.



-   :material-microsoft-windows:{ .lg .middle } :material-apple:{ .lg .middle } :fontawesome-brands-linux:{ .lg .middle } __Cross platform__

    ---

    xDSL runs just about anywhere Python can.



-   :material-handshake:{ .lg .middle } __MLIR-compatible__

    ---

    Uses the same textual format as MLIR for intermediate representation.


-   :fontawesome-solid-terminal:{ .lg .middle } __ __

    ---

    .



-   :material-scale-balance:{ .lg .middle } __Open Source__

    ---

    Textual is licensed under Apache License v2.0 with LLVM Exceptions.


</div>




## Easily declare IR and transformations

```python
def foo() -> None:
    return None

foo()
```

## Built with xDSL

- [xdsl-smt](https://github.com/opencompl/xdsl-smt) -- The implementation of an SMTLib dialect for xDSL
- [inconspiquous](https://github.com/xdslproject/inconspiquous) -- A testing ground for quantum computing compilation ideas in xdsl
- [xdsl-asl](https://github.com/xdslproject/xdsl-asl) -- Integrating asl in the xDSL/MLIR ecosystem
- Your revolutionary new compiler project...


## Get in touch

- [Chat on Zulip](https://xdsl.zulipchat.com/)
- [Report bugs and request new features](https://github.com/xdslproject/xdsl/issues)
- [Read or contribute to the code](https://github.com/xdslproject/xdsl/)
