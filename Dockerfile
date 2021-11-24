FROM node:14-alpine

RUN adduser --disabled-password --gecos "" telegram-swear-bot
WORKDIR /home/telegram-swear-bot
USER telegram-swear-bot

COPY . /home/telegram-swear-bot/
USER root
RUN chown -R telegram-swear-bot /home/telegram-swear-bot/
USER telegram-swear-bot
RUN yarn

USER node

CMD yarn start
