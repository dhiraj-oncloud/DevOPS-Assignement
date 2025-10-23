# Use Node.js slim image
FROM node:18-slim

# Work directory set karo
WORKDIR /app

# Package files copy karo
COPY package*.json ./

# Dependencies install karo (sirf production wale)
RUN npm ci --only=production

# Sab files copy karo
COPY . .

# User change karo (security ke liye)
RUN useradd -m appuser
USER appuser

# Server run karo
CMD ["node", "server.js"]