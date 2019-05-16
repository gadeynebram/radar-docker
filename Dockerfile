FROM rocker/shiny-verse
WORKDIR  /srv/shiny-server/
RUN wget https://github.com/open-ams/radar/archive/master.zip
RUN unzip master.zip
RUN mv radar-master radar
RUN rm master.zip
RUN R < /srv/shiny-server/radar/dependencies.R
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf