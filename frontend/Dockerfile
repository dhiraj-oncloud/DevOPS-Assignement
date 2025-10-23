# Use Node.js slim image
FROM node:18-slim

# Work directory set karo
WORKDIR /app

# Package files copy karo
COPY package*.json ./

# Dependencies install karo
RUN npm ci

# Sab files copy karo
COPY . .

# Build the React app
RUN npm run build

# Serve the build
RUN npm install -g serve
CMD ["serve", "-s", "build", "-l", "3000"]