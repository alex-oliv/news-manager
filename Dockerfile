# Etapa de desenvolvimento
FROM node:iron-alpine AS development

WORKDIR /usr/src/app
RUN npm install -g pnpm
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile --prod=false
COPY . .

RUN pnpm run build

# Etapa de produção
FROM node:iron-alpine AS production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app
RUN npm install -g pnpm
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile --prod=true
COPY --from=development /usr/src/app/dist ./dist

EXPOSE 3000
CMD ["node", "dist/main"]
