FROM node:8-alpine
ENV TZ=Asia/Shanghai

RUN apk add --no-cache git bash && \
    git clone https://github.com/spacemeowx2/switch-lan-play.git && \
    cd switch-lan-play && \
    cd server && \
    npm install && \
    npm run build
RUN touch start.sh
RUN echo "cd /switch-lan-play/server && npm start">>/start.sh
RUN chmod 777 /start.sh
EXPOSE 11451

ENTRYPOINT ["/bin/bash","/start.sh"]
