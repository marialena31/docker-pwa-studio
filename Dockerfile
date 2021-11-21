FROM node:lts

WORKDIR /app

COPY pwa-studio-fundamentals /app

RUN yarn 

RUN yarn add --dev sass-loader node-sass

EXPOSE 10000

CMD ["yarn","watch"]!
