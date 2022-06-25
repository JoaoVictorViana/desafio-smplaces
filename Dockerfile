FROM node:16-alpine AS development

RUN apk add --no-cache libc6-compat
WORKDIR /app

COPY package.json package-lock.json ./

COPY src/ ./src

RUN npm ci

EXPOSE 3000

ENV PORT 3000

CMD ["npm", "run", "dev"]