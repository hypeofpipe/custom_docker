FROM circleci/node:8.9.1

USER root

RUN apt-get update && \
  apt-get install -y \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    xvfb

RUN curl https://npmjs.org/install.sh | sh
RUN npm install -g npm@6.2.0
RUN npm update -g

# versions of local tools
RUN node -v
RUN npm -v
RUN yarn -v
