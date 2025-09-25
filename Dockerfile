FROM node:24-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN yarn install --frozen-lockfile --non-interactive

COPY . .

RUN yarn run build

FROM node:24-alpine AS production

ENV NODE_ENV=production

WORKDIR /app

COPY --from=build /app/package*.json ./
COPY --from=build /app/.output .output

RUN yarn install --frozen-lockfile --non-interactive --production=true

USER node

EXPOSE 3000

CMD ["node", "./.output/server/index.mjs"]
