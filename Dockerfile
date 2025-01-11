FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install

COPY packages_init.json ./
RUN npm install packages_init.json

COPY . .
EXPOSE 5000
CMD [ "npm", "start" ]
# CMD ["node", "src/server.js"]
