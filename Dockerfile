FROM node:12.2.0-alpinei
RUN apt update
WORKDIR app
COPY . .
RUN npm install
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"]
