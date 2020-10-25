FROM node:8-alpine
ENV TZ=Asia/Shanghai
WORKDIR /APP
RUN apk add --no-cache git && \
    git clone https://github.com/spacemeowx2/switch-lan-play.git && \
    cd switch-lan-play && \
    cd server && \
    npm install && \
    npm run build && \
COPY /switch-lan-play/server /app

CMD ["npm", "start"]
