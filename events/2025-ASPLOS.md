---
layout: page
title: ASPLOS 2025 Tutorial
subtitle: Rotterdam, The Netherlands — March 30- April 3, 2025
---

# _xDSL: a Python-based Compiler Ecosystem_ 

We will be presenting **xDSL** as part of the ASPLOS 2025 [tutorial](https://www.asplos-conference.org/asplos2025/workshops-and-tutorials/) session.

## Details

**Date and Time:** Sunday 30 March 2025, 9:00-12:30  
**Location:** Leeuwen room II

## Abstract

xDSL is a Python-based framework that enhances MLIR by enabling flexible interaction through a shared textual IR format
and the IRDL dialect, which defines other dialects. It supports native Python development, DSL integration, and
low-level compiler extensions, simplifying compiler research and prototyping. By offering loosely coupled integration
with MLIR, xDSL reduces the need for deep expertise in C++ and LLVM, making it accessible for diverse use cases while
streamlining compiler workflows. 

In this tutorial, we will introduce xDSL and some of its so far applications in various application domains, demonstrate 
its capabilities, and guide attendees in creating and optimizing domain-specific languages using MLIR through hands-on exercises.

## Program

| **Time**       | **Event**                                                                 | **Speaker(s)**                                                                 |
|----------------|---------------------------------------------------------------------------|--------------------------------------------------------------------------------|
| **09:00-09:05** | Welcome                                                                  | Sasha Lopoukhine, University of Cambridge                                     |
| **09:05-09:25** | xDSL: Overview and Why to Adopt It                                       | Tobias Grosser, University of Cambridge and Chris Vasiladiotis, University of Edinburgh                                   |
| **09:25-09:45** | Hardware-Informed Domain-Specific Transformations                        | Sasha Lopoukhine, University of Cambridge                                     |
| **09:45-10:05** | TBD                                                                      | Nick Brown, EPCC at the University of Edinburgh                                |
| **10:05-10:30** | Introduction to MLIR                                                     | Sasha Lopoukhine, University of Cambridge and Chris Vasiladiotis, University of Edinburgh |
| **10:30-11:00** | *Coffee Break*                                                           |                                                                                |
| **11:00-12:25** | [Hands-on Interactive Tutorial](https://xdsl.dev/workshop/)              | Sasha Lopoukhine, University of Cambridge and Chris Vasiladiotis, University of Edinburgh |
| **12:25-12:30** | Closing Remarks                                                          |                                                                                |


## Team

<div class="speaker-bio">
  <img src="/assets/img/portraits/grosser.jpg" alt="Tobias Grosser" class="speaker-photo">
  <div class="speaker-text">
    <h3>Tobias Grosser</h3>
    <p>
    Tobias Grosser is an Associate Professor at the University of Cambridge and an
    advocate for open-source-first research. Tobias co-founded the Polyhedral loop
    optimization framework Polly, the FPL Presburger Math Library for MLIR, the
    LLHD/CIRCT hardware-design compiler, and is advocating teaching compiler design
    using state-of-the-art technology from the MLIR/LLVM ecosystem supported by
    his Python-Native xDSL compiler. Tobias was a Google PhD Fellow at ENS
    Paris, an SNSF Ambizione Fellow at ETH Zurich, and a Reader at the University
    of Edinburgh. He supervises currently six PhD students who actively contribute
    to the open-source compiler ecosystem.
    </p>
  </div>
</div>
<div class="speaker-bio">
  <img src="/assets/img/portraits/nick_brown.jpg" alt="Nick Brown" class="speaker-photo">
  <div class="speaker-text">
    <h3>Nick Brown</h3>
    <p>
    Nick Brown is a Senior Research Fellow at EPCC, the University of Edinburgh, with a strong focus on High Performance 
    Computing (HPC). Working at the UK’s leading supercomputing centre, much of his research centres around the role that
    novel hardware can play in future supercomputers. Given the energy efficiency of many emerging hardware technologies,
    his work is particularly relevant to advancing supercomputing workloads towards Net-Zero goals. Nick is deeply
    motivated by the grand challenge of enabling scientific programmers to effectively leverage these technologies
    without requiring extensive expertise in hardware or architecture. His research integrates novel algorithmic
    approaches for new hardware, programming language and library design, and compiler development to bridge this gap
    and empower researchers in the HPC community.
    </p>
  </div>
</div>
<div class="speaker-bio">
  <img src="/assets/img/portraits/chris_vasiladiotis.jpg" alt="Chris Vasiladiotis" class="speaker-photo">
  <div class="speaker-text">
    <h3>Chris Vasiladiotis</h3>
    <p>
    Chris Vasiladiotis is a Research Associate at the University of Edinburgh.
    His research interests lie in compiler technologies and domain-specific languages (DSLs), aiming to bridge the gap
    between hardware capabilities and software efficiency. He is actively involved in the development of xDSL, a
    Python-based compiler infrastructure designed to simplify the creation and optimization of DSLs using MLIR.
    Chris holds a PhD in Computer Science from the University of Edinburgh where he worked on hybrid static/dynamic
    automatic parallelization techniques for applications utilizing heap-based data structures.
    </p>
  </div>
</div>
<div class="speaker-bio">
  <img src="/assets/img/portraits/sasha_lopoukhine.jpg" alt="Sasha Lopoukhine" class="speaker-photo">
  <div class="speaker-text">
    <h3>Sasha Lopoukhine</h3>
    <p>
    Sasha Lopoukhine is a PhD student at the University of Cambridge, researching making machine learning compilers more
    approachable and extensible. His recent work has been to leverage xDSL to implement a backend for linear algebra
    micro-kernels targeting ETH's Snitch core, outperforming the state-of-the-art LLVM backend by a factor of 20.
    </p>
  </div>
</div>

## Organization

Please contact [Chris Vasiladiotis](mailto:c.vasiladiotis at ed.ac.uk) for any questions or further information.

<style>
.speaker-bio {
  display: flex;
  align-items: flex-start;
  margin-bottom: 2rem;
}

.speaker-photo {
  width: 100px;
  height: 100px;
  border-radius: 50%;
  margin-right: 1.5rem;
  object-fit: cover;
}

.speaker-text {
  flex: 1;
}

.speaker-text h2 {
  margin-top: 0;
}

@media (max-width: 768px) {
  .speaker-photo {
    width: 80px;
    height: 80px;
    margin-right: 1rem;
  }
}
</style>

