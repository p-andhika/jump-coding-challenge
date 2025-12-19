# ---------- Build Stage ------------
FROM node:20-alpine AS builder

WORKDIR /home/app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# --------- Runtime Stage ------------

FROM node:20-alpine

WORKDIR /home/app

# Install only runtime dependency
RUN npm install -g serve

# Copy only build output
COPY --from=builder /home/app/dist ./dist

EXPOSE 3000

CMD ["serve", "-s", "dist", "-l", "3000"]
