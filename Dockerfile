#
# Dockerise github.com/nickdiego/compiledb
#
FROM centos:6

ENV COMPILEDBVER=0.9.8

RUN yum install -y centos-release-scl
RUN yum install -y python27 git
RUN echo "source /opt/rh/python27/enable" > /root/.bashrc \
    && source /root/.bashrc \
    && pip install compiledb
