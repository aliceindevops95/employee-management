FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json /front-app/

RUN npm install

# Mentioned exposed port for documentation
EXPOSE 4200

CMD ["npm", "start"]
