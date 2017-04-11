FROM lpmn/lalsuite-prereqs
MAINTAINER Daniel Williams <daniel.williams@ligo.org>

ENV LSCSOFT_ROOTDIR= \
    LSCSOFT_SRCDIR=/opt/src/lscsoft

# configure Git
RUN git config --global user.name "Anonymous" \
 && git config --global user.email anonymous@example.com


WORKDIR $LSCSOFT_SRCDIR
RUN git clone https://github.com/lscsoft/lalsuite.git .
RUN ./00boot && ./configure && make && make install
