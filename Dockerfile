FROM ubuntu:trusty
MAINTAINER Jinnan Gong <gongjinnan1989@gmail.com>
RUN apt-get -y install wget
RUN cd /rootC:\Users\Administrator\AppData\Local\atom\atom.exe &&  \
	wget http://mirrors.163.com/.help/sources.list.trusty &&  \
	sudo cp -f /root/sources.list.trusty /etc/apt/sources.list &&  \
	apt-get update &&  \
	apt-get install -y curl &&  \
	curl -sSL http://neuro.debian.net/lists/trusty.us-ca.full >> /etc/apt/sources.list.d/neurodebian.sources.list &&  \
	apt-key adv --recv-keys --keyserver hkp://pgp.mit.edu:80 0xA5D32F012649A5A9  &&  \
	apt-get install -y fsl-core  &&  \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

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
