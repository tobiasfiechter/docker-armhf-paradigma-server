FROM ubuntu:18.04
RUN apt-get update && \
    apt-get upgrade -y

COPY ./server/paradigma-server-0.0.5.pl /opt/
WORKDIR /opt/
EXPOSE 22460
VOLUME /share

# Install dependencies
RUN apt-get install -yq rrdtool librrds-perl perl
RUN mkdir share
RUN export PERL5LIB=${PERL5LIB}:/opt/rrdtool-1.4.4/lib/perl

CMD  perl ./paradigma-server-0.0.5.pl
