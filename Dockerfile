FROM node:argon

# npm installs
RUN npm install -g \
    nodemon \
    pencilblue-cli

# PencilBlue installation dependencies and configs
WORKDIR /app
ADD . /app
RUN npm install

CMD ["pencilblue", "start"]
EXPOSE 80
