---
date: 2023-05-18
title: xDSL at Durham HPC Days
categories:
  - blog
tags:
  - technical
  - workshop
---

Between Tuesday 16th and Friday 19th of May Durham HPC Days was held in the
Department of Computer Science at Durham University. A focus session was held on
ExCALIBUR and specifically the novel hardware that has been made availble as
part of the ExCALIBUR H&ES programme. However, novel hardware is of little use
if scientific software developers are unable to programme it, and therefore xDSL
gave a talk on our efforts to improve the field of Domain Specific Languages by
developing a common ecosystem.

<!-- <img src="/assets/img/durham-hpc-days2.jpg" align=right width=200> -->

We described how MLIR and LLVM are ideal to solving the problems around siloed
DSL ecosystems, before highlighting how xDSL enables DSL developers to construct
a thin abstraction layer atop our Python based ecosystem. Some of our work on
the PSyclone and Devito DSLs was then discussed, with the point being that
whilst these DSLs are very different, for instance PSyclone is Fortran based
whereas Devito is Python based, they can still leverage the same underlying
compiler infrastructure and when running on ARCHER2 we observe performance
benefits and significant code level reductions compared to their existing
bespoke compilers.

The workshop was a fanstastic event, with a series of very interesting talks
from a wide ranging audience and it was very useful for us to gain feedback from
them around our existing and planned activities.
