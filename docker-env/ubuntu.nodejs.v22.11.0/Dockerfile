FROM ubuntu:24.10

RUN apt update -y && apt upgrade -y && apt install curl tar xz-utils  -y

ARG WORK_DIR="/opt"
ARG NODEJS_VERSION="v22.11.0"
ARG NODEJS_DOWNLOAD_URL="https://nodejs.org/dist/$NODEJS_VERSION/node-$NODEJS_VERSION-linux-x64.tar.xz"
ARG NODEJS_ARCHIVE="/tmp/nodejs-$NODEJS_VERSION.tar.xz"
ARG NODEJS_HOME="$WORK_DIR/node-$NODEJS_VERSION-linux-x64"

RUN curl -o $NODEJS_ARCHIVE $NODEJS_DOWNLOAD_URL

RUN tar -xf $NODEJS_ARCHIVE -C $WORK_DIR

RUN rm $NODEJS_ARCHIVE

RUN ln -s $NODEJS_HOME/bin/node /usr/bin/node

RUN ln -s $NODEJS_HOME/bin/npm /usr/bin/npm

RUN node -v
RUN npm -v

WORKDIR application-npm

COPY .npmrc .npmrc

CMD ["/bin/bash"]