FROM node:14.20.0-alpine
WORKDIR /usr/src/app

COPY package.json package-lock.json .

RUN npm i -g npm@8.19.2 && \
	npm install -g @angular/cli@8.3.29 && \
	npm install -g ts-node@10.9.1 && npm i -g node-gyp@9.3.0 && \
	npm install -g webpack-cli@4.10.0 && \
	npm install -g webpack@5.74.0


COPY . .


EXPOSE 4201

RUN npm install --legacy-peer-deps 

CMD ["npm", "run", "start"]

#RUN npm run start


