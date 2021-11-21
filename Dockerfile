FROM node:lts

WORKDIR /app

COPY pwa-studio-fundamentals /app

RUN yarn 

EXPOSE 10000

CMD ["yarn","watch"]!
