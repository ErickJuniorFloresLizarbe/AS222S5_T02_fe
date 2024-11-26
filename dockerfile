FROM node:18

RUN mkdir -p /app

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . /app

RUN npm run build --prod

ENV API_BACKEND = ${DATABASE_USERNAME}

EXPOSE 4200

ENTRYPOINT ["npm", "start"]
