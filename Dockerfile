# ---- Base build stage ----
FROM node:24-alpine AS build

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile --non-interactive

COPY . .

RUN yarn build

FROM node:24-alpine AS production

ENV NODE_ENV=production

WORKDIR /app

COPY --from=build /app/.output ./.output
COPY --from=build /app/package.json ./package.json
COPY --from=build /app/yarn.lock ./yarn.lock

RUN yarn install --frozen-lockfile --non-interactive --production=true && yarn cache clean

RUN chown -R node:node /app
USER node

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]
