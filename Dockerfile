FROM node:current-slim

WORKDIR /usr/src/app
COPY package.json .
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]

COPY . .


ARG GITHUB_REF
LABEL GITHUB_REF=${GITHUB_REF}
ARG GITHUB_SHA
LABEL GITHUB_SHA=${GITHUB_SHA}
