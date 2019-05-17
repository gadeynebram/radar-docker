FROM rocker/shiny-verse
WORKDIR  /srv/shiny-server/
RUN wget https://github.com/open-ams/radar/archive/v0.1.zip
RUN unzip v0.1.zip
RUN mv radar-0.1 radar
RUN rm v0.1.zip
RUN R < /srv/shiny-server/radar/dependencies.R
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf