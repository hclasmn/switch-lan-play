FROM node:8-alpine
ENV TZ=Asia/Shanghai

RUN apk add --no-cache git && \
    git clone https://github.com/spacemeowx2/switch-lan-play.git && \
    cd switch-lan-play && \
    cd server && \
    npm install && \
    npm run build
CMD ["node", "/switch-lan-play/server/dist/mian.js"]
