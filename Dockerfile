# FROM node:16-alpine
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 5000
# CMD [ "npm", "start" ]
# CMD ["node", "src/server.js"]

FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install express@4.18.2
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
