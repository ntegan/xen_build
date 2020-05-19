

FROM ubuntu:18.04

RUN apt  update \
     && apt -y install  \
	apt-transport-https \
	build-essential \
	cmake \
	curl \
	flex \
	bison \
	git \
	vim \
	tmux \
	wget 

# Enable noniteractive tzdata install for something
RUN export DEBIAN_FRONTEND=noninteractive && \
apt install -y tzdata && \
ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime && \
dpkg-reconfigure --frontend noninteractive tzdata

RUN apt -y install build-essential && \
apt -y install bcc bin86 gawk bridge-utils iproute2 libcurl4 libcurl4-openssl-dev bzip2 module-init-tools transfig tgif && \
apt -y install texinfo texlive-latex-base texlive-latex-recommended texlive-fonts-extra texlive-fonts-recommended pciutils-dev mercurial && \
apt -y install make gcc libc6-dev zlib1g-dev python python-dev python-twisted libncurses5-dev patch libvncserver-dev libsdl-dev libjpeg-dev && \
apt -y install libnl-route-3-200 libnl-3-dev libnl-cli-3-dev libnl-genl-3-dev libnl-route-3-dev && \
apt -y install iasl libbz2-dev e2fslibs-dev git-core uuid-dev ocaml ocaml-findlib libx11-dev bison flex xz-utils libyajl-dev && \
apt -y install gettext libpixman-1-dev libaio-dev markdown pandoc && \
apt -y install libc6-dev-i386 && \
apt -y install lzma lzma-dev liblzma-dev && \
apt -y install libsystemd-dev && \
apt -y install man-db

#he updates his sources list 
#COPY sources.list /etc/apt/sources.list
# oh maybe he just uncomments the source archives

RUN apt update  && \
	apt dist-upgrade -y && \
	apt upgrade -y
	
