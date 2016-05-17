FROM node:4.4

RUN apt-get update --fix-missing && apt-get dist-upgrade -y && apt-get install -y npm git 
RUN npm install -g iced-coffee-script 
RUN ln -s /usr/bin/nodejs /usr/bin/node

# simple tests
RUN node --version
RUN npm --version
RUN iced --version
RUN node --version   | grep v4.4.4 && \
    npm --version    | grep 2.15.1 && \
    iced --version | grep 108.0.11
