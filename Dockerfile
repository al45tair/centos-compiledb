#
# Dockerise github.com/nickdiego/compiledb
#
FROM centos:6

RUN yum install -y centos-release-scl
RUN yum install -y python27 git

ENV PATH="/opt/rh/python27/root/usr/bin:${PATH}"
ENV LD_LIBRARY_PATH="/opt/rh/python27/root/usr/lib64:${LD_LIBRARY_PATH}"

RUN pip install compiledb
