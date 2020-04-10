FROM node:alpine3.10
WORKDIR /usr/src/app
COPY . .
RUN npm ci && npm run generate:keys-forge
CMD ["npm", "run", "start:server"]
USER node
EXPOSE 8443