FROM nickstenning/slapd:latest
MAINTAINER Eric Gazoni <eric.gazoni@adimian.com>

ADD memberof.conf  /tmp/memberof.conf
RUN slapadd -n0 -v -l /tmp/memberof.conf
RUN rm /tmp/memberof.conf
