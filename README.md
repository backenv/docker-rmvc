# [burgeonenv/r-mvc](https://hub.docker.com/r/burgeonenv/r-mvc "dockerhub webpage")

## R Model-View-Controller base system
> At the command line
> ```bash
> docker pull burgeonenv/r-mvc:latest
> ```
> 
> Inside a Dockerfile 
> ```dockerfile
> FROM burgeonenv/r-mvc:R-4.1-focal
> ...
> ```

R-packages are installed as binaries directly from `apt` repositories (_i.e.:_ without `> install.packages()`). Signing software is removed, R repositories are preserved, `--no-install-recommends` flag activated at install.

Available tags:
 - `R-4.1-bullseye` (`latest`)
 - `R-4.1-focal`
 - `R-4.1-bionic`
 - `R-4.0.4-bullseye`
 - `R-3.6-bionic`

All `r-mvc` tags are available as layer files at [DockerHub](https://hub.docker.com/r/burgeonenv/r-mvc/tags?page=1&ordering=name "r-mvc tags").

### Specific content
> `debian` or `ubuntu` container with:
>
>    - `r-base-core`
>    - `r-cran-curl`
>    - `r-cran-dbi`
>    - `r-cran-ggplot2`
>    - `r-cran-jsonlite`
>    - `r-cran-plumber`
>    - `r-cran-rsqlite`
>    - `r-cran-stringi`
