FROM jenkins
# if we want to install via apt
USER root
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates
RUN echo "deb https://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get update && apt-get install -y sbt
USER jenkins # drop back to the regular jenkins user - good practice