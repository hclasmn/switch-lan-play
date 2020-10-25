FROM node:8-alpine
WORKDIR /app
COPY ./ /app
RUN npm install && \
    npm run build

CMD [ "npm", "start" ]