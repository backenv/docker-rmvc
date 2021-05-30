FROM debian:bullseye

ENV TZ=Europe/Andorra
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_REPOKEY=E19F5F87128899B192B1A2C2AD5F960A256A04AF
ENV DEBIAN_REPODEB="deb [arch=amd64] http://cloud.r-project.org/bin/linux/debian bullseye-cran40/"

RUN apt update && apt -y upgrade && apt -y install gnupg

RUN echo ${DEBIAN_REPODEB} > /etc/apt/sources.list.d/r-cran.list && \
  apt-key adv --keyserver keys.gnupg.net --recv-key ${DEBIAN_REPOKEY}


RUN apt update && apt install -y --no-install-recommends \
	-t bullseye-cran40 \
        r-base-core \
        r-cran-curl \
        r-cran-dbi \
        r-cran-ggplot2 \
        r-cran-jsonlite \
        r-cran-plumber \
        r-cran-rsqlite \
        r-cran-stringi

RUN apt -y remove gnupg && apt -y autoremove
