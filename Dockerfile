FROM node:22-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build

FROM node:22-alpine AS production

WORKDIR /app

COPY --from=build /app/package*.json ./
COPY --from=build /app/.output .output

RUN npm install
RUN npm prune --production

EXPOSE 3000

CMD ["node", "./.output/server/index.mjs"]
