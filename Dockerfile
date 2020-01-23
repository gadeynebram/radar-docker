FROM rocker/shiny-verse
WORKDIR  /srv/shiny-server/
RUN wget https://github.com/open-ams/radar/archive/v0.2.zip
RUN unzip v0.2.zip
RUN mv radar-0.2 radar
RUN rm v0.2.zip
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf
USER shiny
RUN mkdir /home/shiny/Rlibs
RUN mkdir /home/shiny/.checkpoint
COPY .Rprofile /home/shiny/.Rprofile
RUN R < /srv/shiny-server/radar/dependencies.R