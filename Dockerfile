FROM ubuntu:xenial
RUN apt update && apt-get install apt-transport-https -y
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 09617FD37CC06B54
RUN echo "deb https://dist.crystal-lang.org/apt crystal main" > /etc/apt/sources.list.d/crystal.list
RUN apt update && apt-get install \
  libbsd-dev \
  libedit-dev \
  libevent-core-2.0-5 \
  libevent-dev \
  libevent-extra-2.0-5 \
  libevent-openssl-2.0-5 \
  libevent-pthreads-2.0-5 \
  libgmp-dev \
  libgmpxx4ldbl \
  libssl-dev \
  libxml2-dev \
  libyaml-dev \
  libreadline-dev \
  automake \
  libtool \
  git \
  llvm \
  libpcre3-dev \
  build-essential \
  crystal -y
RUN mkdir /app
WORKDIR /app
CMD crystal
