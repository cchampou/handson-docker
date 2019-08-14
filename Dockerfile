FROM nginx:alpine

EXPOSE 80
EXPOSE 5000

RUN apk update
RUN apk add nodejs
RUN apk add yarn

COPY package.json .

RUN yarn

COPY nginx/app /etc/nginx/conf.d/default.conf

COPY index.js .
CMD ["yarn", "start", "&&", "nginx", "-g", "daemon off;"]
