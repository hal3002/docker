FROM ubuntu:trusty
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y build-dep clamav
RUN apt-get -y install git
RUN git clone -b 0.99.3 https://github.com/vrtadmin/clamav-devel.git
RUN cd clamav-devel && \
    ./configure --prefix=/usr/local && \
    make && \
    make install && \
    ldconfig && \
    cd .. && \
    rm -rf clamav-devel

COPY install/scan.sh /usr/local/bin

CMD ["/usr/local/bin/scan.sh"]
