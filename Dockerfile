FROM node:14-alpine
WORKDIR /usr/src/app
COPY package*.json and package-lock.json ./
RUN npm install
COPY . .
RUN npm run build 
EXPOSE 4200
CMD ["npm", "start"]
