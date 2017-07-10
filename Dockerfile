FROM ubuntu:trusty
MAINTAINER Jinnan Gong <gongjinnan1989@gmail.com>
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get install -y curl
RUN wget -O- http://neuro.debian.net/lists/trusty.cn-zj.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
RUN sudo apt-get update
RUN sudo apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9
RUN apt-get install -y fsl-complete
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Configure environment
ENV FSLDIR=/usr/share/fsl/5.0
ENV FSLOUTPUTTYPE=NIFTI_GZ
ENV PATH=/usr/lib/fsl/5.0:$PATH
ENV FSLMULTIFILEQUIT=TRUE
ENV POSSUMDIR=/usr/share/fsl/5.0
ENV LD_LIBRARY_PATH=/usr/lib/fsl/5.0:$LD_LIBRARY_PATH
ENV FSLTCLSH=/usr/bin/tclsh
ENV FSLWISH=/usr/bin/wish
ENV FSLOUTPUTTYPE=NIFTI_GZ
