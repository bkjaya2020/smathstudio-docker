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
RUN apt update 
RUN apt install -y xfce4-terminal \
    && apt install -y tzdata \
    && apt install -y vim \
    && apt install -y mono-complete \
    && apt install -y unzip \
    && apt -y autoremove
COPY smath.zip /smath.zip
RUN unzip /smath.zip
RUN rm /smath.zip
RUN chmod 777 /smath/smathstudio_desktop_mono
COPY bash.bashrc /etc/bash.bashrc
COPY smath.sh /usr/bin/smath.sh
RUN chmod 777 /usr/bin/smath.sh
RUN unlink /etc/localtime
EXPOSE 8080
CMD ["/usr/bin/supervisord"]


