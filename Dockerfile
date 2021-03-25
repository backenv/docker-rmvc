FROM debian:10

ENV TZ=Europe/Andorra
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt -y upgrade

RUN apt install -y --no-install-recommends \
        r-base-core \
        r-cran-curl \
        r-cran-dbi \
        r-cran-ggplot2 \
        r-cran-jsonlite \
        r-cran-plumber \
        r-cran-rsqlite \
        r-cran-stringi
