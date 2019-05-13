FROM rocker/shiny-verse
WORKDIR  /srv/shiny-server/
RUN wget https://github.com/gadeynebram/radar/archive/docker_changes.zip
RUN unzip docker_changes.zip
RUN mv radar-docker_changes radar
RUN rm docker_changes.zip
RUN R < /srv/shiny-server/radar/dependencies.R