FROM lpmn/lalsuite-prerequisites
MAINTAINER Daniel Williams <daniel.williams@ligo.org>

ENV LSCSOFT_ROOTDIR= \
    LSCSOFT_SRCDIR=/opt/src/lscsoft

# configure Git
RUN git config --global user.name "Anonymous" \
 && git config --global user.email anonymous@example.com


WORKDIR $LSCSOFT_SRCDIR
RUN git clone https://github.com/lscsoft/lalsuite.git .
RUN ./00boot && ./configure --enable-swig-python && make  && make install 
RUN expr "X$0" : '^X.*csh' >/dev/null && source /opt/src/lscsoft/_inst/etc/lalsuite-user-env.csh || . /opt/src/lscsoft/_inst/etc/lalsuite-user-env.sh