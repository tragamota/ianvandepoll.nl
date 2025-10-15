# ---------- BUILD STAGE ----------
FROM node:24-slim AS build

WORKDIR /app

# Copy dependency files first for better caching
COPY package.json ./

# Install all dependencies
RUN npm install 

# Copy the rest of the source code
COPY . .

# Build the Nuxt project
RUN npm run build


# ---------- PRODUCTION STAGE ----------
FROM node:24-slim AS production

ENV NODE_ENV=production
WORKDIR /app

# Copy only what’s needed for production
COPY --from=build /app/.output ./.output
COPY --from=build /app/package.json ./package.json

# Install only production dependencies
RUN npm install --omit=dev

# Set correct ownership and permissions
RUN chown -R node:node /app
USER node

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]
