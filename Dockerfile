FROM            docker.io/node:20
RUN             apt update
RUN             apt autoremove git -y

RUN             useradd expense
RUN             mkdir /app
COPY            *.js package.json /app/
WORKDIR         /app
RUN             npm install
ENTRYPOINT      ["node", "/app/index.js"]


