FROM node:0.10

RUN npm install coffee-script -g

RUN git clone https://github.com/behrad/pushd.git /app/
WORKDIR /app/
RUN npm install

COPY ./settings.coffee /app/settings.coffee
EXPOSE 2407

CMD ["coffee", "/app/pushd.coffee"]
