FROM node:8-alpine
ENV TZ=Asia/Shanghai

WORKDIR /app
RUN apk add --no-cache git && \
    git clone https://github.com/spacemeowx2/switch-lan-play.git && \
    cd switch-lan-play && \
    cd server && \
    npm install && \
    npm run build

FROM node:8-alpine

COPY --from=0 /app/switch-lan-play/server/dist /paly-onlan

WORKDIR /paly-onlan
CMD ["node", "mian.js"]