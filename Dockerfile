FROM node:16

WORKDIR /usr/src/app
COPY package*.json ./
COPY index.js .
COPY run.sh .
RUN npm install

EXPOSE 3000

ENTRYPOINT [ "bash", "./run.sh" ]
CMD []