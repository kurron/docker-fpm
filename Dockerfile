FROM centos:7

MAINTAINER Ron Kurr <kurr@kurron.org>
 
COPY install-ansible-centos.sh /root
RUN /root/install-ansible-centos.sh
