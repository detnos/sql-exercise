FROM node:latest

ENV POSTGRES_PORT=5432 \
    POSTGRES_HOST=localhost \
    POSTGRES_USER=postgres \
    POSTGRES_PASSWORD=password \
    POSTGRES_DATABASE=postgres \
    PORT=3000

EXPOSE 3000

COPY . /opt/app

WORKDIR /opt/app

RUN npm install

CMD ["npm", "start"]