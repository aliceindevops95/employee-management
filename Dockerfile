#Use the Node.js LTS image as the base image
FROM node:14-alpine
#Create a directory for the application
RUN mkdir -p /usr/src/app
#Set the working directory
WORKDIR /usr/src/app
#Copy the package.json and package-lock.json files
COPY package*.json ./
#Install the application dependencies
RUN npm ci
#Copy the rest of the application code
COPY . .
#Build the application
RUN npm run build --prod
#Expose port 4200
EXPOSE 4200
#Start the application
CMD ["npm", "start"]
