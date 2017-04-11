Dockerfile for the LAL suite
===============================

This is a Scientific Linux 7.2 image running
the
[LAL suite](https://www.lsc-group.phys.uwm.edu/daswg/docs/howto/lal-install.html).

First you will need the prerequisites (under `Prereqs/`) built and tagged
`lpmn/lalsuite-prereqs-docker:latest`.

This dockerfile is adapted from
the
[repository by waisbrot ](https://github.com/waisbrot/lalsuite-docker)
but updated to use the current LDG reference OS, which is Scientific
Linux 7.x.
