![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/openams/radar.svg)

# RadaR on Docker

A docker image to run the [RadaR](https://github.com/open-ams/radar) project.

# Run using the following commands

Assuming your working directory is the root of this repository

```
docker run --name=radar -p 3838:3838 --mount type=bind,source="$(pwd)"/data,target=/srv/shiny-server/radar/data openams/radar
```

# Data files

Data files can be added to the data directory and will be mounted in the RadaR app.