#############################################################################################
# docker image  bkjaya1952/smathsudio:0.99.7030                                             #
# forked from Kyle Anderson's  solarkennedy/wine-x11-novnc-docker                           #
# Smath Studio software from Andrey Ivashov's  SMath Studio 0.99.7030                       #
# Thanks to  Kyle Anderson and Nicolas SAPA  !                                              #
# Thanks to  Andrey Ivashov ( https://en.smath.com/forum/yaf_profile4_Andrey-Ivashov.aspx ) #
# https://en.smath.com/forum/                                                               #
#############################################################################################
FROM  solarkennedy/wine-x11-novnc-docker 
MAINTAINER B.K.Jayasundera
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
RUN apt purge -y winehq-stable \
    && apt -y autoremove \
    && rm -rf /opt/wine-stable/share/wine/mono \
    && rm -rf /opt/wine-stable/share/wine/gecko \
    && apt update \ 
    && apt -y --no-install-recommends install xfce4-terminal tzdata  mono-complete unzip \
    && rm -rf /var/lib/apt/lists/* \
    && apt -y autoremove
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY smath.zip /smath.zip
RUN unzip /smath.zip \
    && apt -y purge unzip
COPY bash.bashrc /etc/bash.bashrc
COPY smath.sh /usr/bin/smath.sh
RUN chmod 777 /usr/bin/smath.sh \
    && unlink /etc/localtime
EXPOSE 8080
CMD ["/usr/bin/supervisord"]


