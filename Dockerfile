FROM rocker/tidyverse:4.0.2

RUN apt-get update \
  && apt-get install -y openssh-client \
  && apt-get clean \
  && apt-get autoclean \
  && git config --global user.email "dc1340@gmail.com" \
  && git config --global user.name "dc1340" \
  && mkdir /home/rstudio/.ssh \
  && chown rstudio /home/rstudio/.ssh
