FROM waisbrot/lalsuite-prereqs-docker
MAINTAINER Nathaniel Waisbrot <code@waisbrot.net>

ENV LSCSOFT_ROOTDIR= \
    LSCSOFT_SRCDIR=/opt/src/lscsoft

# configure Git
RUN git config --global user.name "Anonymous" \
 && git config --global user.email anonymous@example.com


WORKDIR $LSCSOFT_SRCDIR
RUN git clone git://ligo-vcs.phys.uwm.edu/lalsuite.git .
RUN ./00boot && ./configure && make && make install
