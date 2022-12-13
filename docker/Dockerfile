FROM ubuntu
RUN apt-get update
RUN apt-get -y install pandoc
RUN apt-get -y -q install texlive-latex-recommended
RUN DEBIAN_FRONTEND='noninteractive'  apt-get -y install texlive-xetex

# RUN apt-get -y install texlive-fonts-extra
RUN apt-get -y install lmodern fontconfig fonts-noto fonts-ubuntu
RUN apt-get -y install libfontconfig1 libfreetype6 tar wget perl gnupg gzip xzdec

# install Rosario font
RUN mkdir -p /usr/share/fonts/opentype/rosario
COPY rosario-font/* /usr/share/fonts/opentype/rosario

# refresh system font cache
RUN fc-cache -f -v

WORKDIR /data
