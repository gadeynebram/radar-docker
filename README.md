# RadaR on Docker

A docker image to run the [RadaR](https://github.com/ceefluz/radar) project.

# Run using the following commands

Assuming your working directory is the root of this repository

```
docker build -t radar .
docker run --name=radar --ports 3838:3838 --mount source=data,target=/srv/shiny-server/radar/data radar 
```

