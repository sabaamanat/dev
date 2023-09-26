vim Dockerfile
FROM node:15
ARG PORT=8000
ENV PORT=$PORT 
WORKDIR app
copy src src
copy package.json .
RUN npm install
EXPOSE $PORT
CMD npm start
