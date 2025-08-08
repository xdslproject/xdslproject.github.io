---
date: 2022-08-22
title: Euro-Par Workshop
---

Domain Specific Languages (DSLs) have the potential to revolutionize the
development of scientific high-performance software by providing scientists with
abstractions that are tailored for their specific problem. By encoding rich
domain knowledge by the programmer, the compilation tool-chain is then able to
make effective choices around parallelism. Furthermore, if designed correctly,
then the programmer is able to express their workload in an
architecture-independent fashion, thus making portability across architectures
possible, with the compilation tool-chain doing much of the heavy lifting.

This is especially important in HPC as even effectively exploiting today's
supercomputers is fraught will difficulty and in the domain of the few experts.
As we move towards exascale, with increasingly complex heterogeneous systems,
the ability to fully exploit these machines will be beyond even the most
experienced guru. Put simply, the languages and technologies that are currently
ubiquitous in HPC (C, Fortran, MPI, OpenMP, CUDA) are too low level for end-user
programming and the abstraction level needs to be raised.

The term "language" in DSLs can be a bit of a misnomer, as the name of the game
here is raising the abstraction level, and consequently technologies such as
abstractions embedded inside existing languages, frameworks and libraries are
also highly topical. Many believe that DSLs have the potential to get us closer
to achieving the three P’s; productivity, performance, and performance
portability. Whilst historically this objective has been often seen as somewhat
of a chimera, there is wide acceptance in the HPC community that we need to
solve the programming challenges associated with future exascale machines.
Furthermore, there is a growing consensus that the benefits that DSLs can
deliver are paramount and could be critical in unlocking the full potential of
future supercomputers.

## Schedule

The workshop will be held in the Hugh Fraser room and running between 9:00am and
12:30pm on Monday 22nd of August.

| Time          | Title | Presenter |
| ------------- | ------------- | ------------- |
| 9:00 - 9:05  | Session welcome and aims  | Nick Brown |
| 9:05 - 9:40  | Keynote: Evolutionary Re-Engineering of an Industrial HPC application with OP2 | Gihan Mudalige |
| 9:40 - 10:05 | Research paper: Performance of the Vipera framework for DSLs on micro-core architectures | Maurice Jamieson |
| 10:05 - 10:30 | Research paper: FFTc: An MLIR Dialect for Developing HPC Fast Fourier Transform Libraries | Yifei He |
| 10:30 - 11:00 | Morning coffee break | |
| 11:00 - 11:25 | Invited talk: xDSL an ecosystem for DSL development | Tobias Grosser
| 11:25 - 11:50 | Research paper: TensorFlow as a DSL for stencil-based computation on the Cerebras Wafer Scale Engine | Nick Brown |
| 11:50 - 12:25 | Panel session | |
| 12:25 - 12:30 | Conclusions and next steps | Nick Brown |

### Gihan Mudalige

__Keynote: Evolutionary Re-Engineering of an Industrial HPC application with OP2__

The rapid evolution of High Performance Computing architectures has resulted in
highly complex systems with massively parallel heterogeneous processors, deep
and multiple memory hierarchies and interconnects. As a result, maintaining
performance as platforms change has becomes increasingly difficult. On the one
hand, open standards have been slow to catch up with supporting new hardware,
and for many real applications have not provided the best performance achievable
from these systems. On the other hand, proprietary solutions have only targeted
narrow vendor-specific devices resulting in a proliferation of parallel
programming models and technologies. In this talk I will present how we used
OP2, one of the earliest DSLs developed in the UK, to re-engineer the Hydra CFD
application, a production HPC application from Rolls-Royce to achieve a
performance portable code-base.  The recent use of the new application,
OP2-Hydra, to carry out break-through simulations reaching fidelity levels for
virtual certification of aero gas-turbine engine design will be presented. I
will detail the simple source-to-source and automatic code-generation techniques
based on maintainable software technologies led to these achievements enabling
to evolve the application without overhauling or re-writing the entire
code-base. The talk will discuss how OP2 has remained agile in delivering
performance portability in the face of over a decade of hardware and parallel
programming innovations and discuss lessons learnt from this work.

### Maurice Jamieson

__Research paper: Performance of the Vipera framework for DSLs on micro-core architectures__

_Authors: Maurice Jamieson, Nick Brown_

Vipera provides a compiler and runtime framework for implementing dynamic
Domain-Specific Languages on micro-core architectures. The performance and code
size of the generated code is critical on these architectures. In this paper we
present the results of our investigations into the efficiency of Vipera in terms
of code performance and size.

### Yifei He

__Research paper: FFTc: An MLIR Dialect for Developing HPC Fast Fourier Transform Libraries__

_Authors: Yifei He, Artur Podobas, Måns Andersson and Stefano Markidis_

Discrete Fourier Transform (DFT) libraries are one of the most critical software
components for scientific computing. Inspired by FFTW, a widely used library for
DFT HPC calculations, we apply compiler technologies for the development of HPC
Fourier transform libraries. In this work, we introduce FFTc, a domain-specific
language, based on Multi-Level Intermediate Representation (MLIR), for
expressing Fourier Transform algorithms. We present the initial design,
implementation, and preliminary results of FFTc.

### Tobias Grosser

__Invited talk: xDSL an ecosystem for DSL development__

Domain Specific Languages show great potential for a range of domains,
including HPC. However a major blocker has been that toolchains are siloed,
sharing little or no infrastructure which not only increases development time
but also raises questions around long term maintenance and support for future
architectures. Recent advances in compiling tools, and the community at large,
have resulted in Multi-Level Intermediate Representation (MLIR) which promotes
much easier reuse due to the ability to compose IR dialects together and to then
rely on existing transformations which undertake optimisation and ultimately
executable code via LLVM-IR or some other target. However, written in C++, there
is a fairly steep learning curve in mastering and integrating MLIR, and-so the
xDSL project are developing a Python toolbox which enables DSL developers to
much more easily integrate with this technology, and define their own dialects
and transformations in Python. Furthermore, by providing a rich set of existing
dialects targetted at HPC, it is our objective that DSL developers can focus on
their abstractions with the required implementation being a thin layer on-top of
an existing, rich, ecosystem.

### Nick Brown

__Reseach paper: TensorFlow as a DSL for stencil-based computation on the Cerebras Wafer Scale Engine__

_Authors: Nick Brown, Brandon Echols, Justs Zarins, Tobias Grosser_

The Cerebras Wafer Scale Engine (WSE) is an accelerator that combines hundreds
of thousands of AI-cores onto a single chip. Whilst this technology has been
designed for machine learning workloads, the significant amount of available raw
compute means that it is also a very interesting potential target for
accelerating traditional HPC computational codes. Many of these algorithms are
stencil-based, where update operations involve contributions from neighbouring
elements, and in this paper we explore the suitability of this technology for
such codes from the perspective of an early adopter of the technology, compared
to CPUs and GPUs. Using TensorFlow as the interface, we explore the performance
and demonstrate that, whilst there is still work to be done around exposing the
programming interface to users, performance of the WSE is impressive as it out
performs four V100 GPUs by two and a half times and two Intel Xeon Platinum CPUs
by around 114 times in our experiments. There is significant potential therefore
for this technology to play an important role in accelerating HPC codes on
future exascale supercomputers.
