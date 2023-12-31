# Node Version
FROM node:latest

# Working Dir
WORKDIR /usr/src/app

#Copy package Json
COPY package.json ./

#COpy Packagelock json
COPY package-lock.json ./

#Install Node Module
RUN npm install

#Copy Source 
COPY . . 

EXPOSE 3000

#EntryPoint
CMD ["npm", "run", "start"]

