FROM ubuntu:18.04

ENV TZ=Europe/Andorra
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt -y upgrade && apt -y install software-properties-common dirmngr

ENV DEB_TAG="bionic-cran35"
ENV DEB_KEY="E298A3A825C0D65DFD57CBB651716619E084DAB9"
ENV DEB_URL="http://cloud.r-project.org/bin/linux/ubuntu"
ENV DEB_KEYSRV="keyserver.ubuntu.com"
ENV DEB_CODE="deb [arch=amd64] ${DEB_URL} ${DEB_TAG}/"

RUN echo ${DEB_CODE} > /etc/apt/sources.list.d/r-cran.list && \
  apt-key adv --keyserver ${DEB_KEYSRV} --recv-key ${DEB_KEY} && \
  add-apt-repository ppa:c2d4u.team/c2d4u4.0+

RUN apt update && apt install -y \
        --no-install-recommends \
	-t ${DEB_TAG} \
        r-base-core \
        r-cran-curl \
        r-cran-dbi \
        r-cran-ggplot2 \
        r-cran-jsonlite \
        r-cran-plumber \
        r-cran-rsqlite \
        r-cran-stringi

RUN apt -y remove software-properties-common dirmngr && \
    apt -y autoremove && \
    unset DEB_KEY DEB_TAG DEB_URL DEB_CODE
