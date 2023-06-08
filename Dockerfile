FROM node 

WORKDIR /main
COPY ./package*.json ./
RUN npm install
COPY ./dist ./dist
COPY ./public ./public

CMD ["npm", "run", "start:prod"]

EXPOSE 3010

