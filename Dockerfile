FROM debian:10

# EXPOSE 80
# EXPOSE 443
# EXPOSE 8000

ENV TZ=Europe/Andorra
# ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt -y upgrade

COPY install_deps.R /install_deps.R

RUN apt install -y --no-install-recommends \
        # libsodium-dev \
        # libcurl4-openssl-dev \
        r-base-core \
        r-cran-curl \
        r-cran-dbi \
        r-cran-ggplot2 \
        r-cran-jsonlite \
        r-cran-plumber \
        r-cran-rsqlite \
        r-cran-stringi

RUN Rscript /install_deps.R
