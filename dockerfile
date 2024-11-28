FROM node:18

RUN mkdir -p /app

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . /app

RUN npm run build --prod

ARG API_BACKEND
ENV API_BACKEND=${API_BACKEND}

EXPOSE 4200

ENTRYPOINT ["npm", "start"]
