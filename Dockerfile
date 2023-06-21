# Node Version
FROM node:latest

# Working Dir
WORKDIR /baseline

#Copy package Json
COPY package.json .

#COpy Packagelock json
COPY package-lock.json .

#Install Node Module
RUN npm i

#Copy Source 
COPY . . 

#EntryPoint
CMD ["npm", "run", "start"]

