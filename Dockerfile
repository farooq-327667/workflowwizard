FROM node:20-slim

WORKDIR /app

# Install dependencies first (better caching)
COPY package*.json ./
RUN npm install

# Copy source code
COPY tsconfig.json ./
COPY server ./server
COPY shared ./shared
COPY client ./client
COPY public ./public
COPY tailwind.config.ts ./
COPY postcss.config.js ./
COPY vite.config.ts ./

# Build TypeScript files and Vite frontend
RUN npm install -g tsx
RUN npm run build

# Set environment variables
ENV NODE_ENV=production
ENV PORT=10000

# Expose the port
EXPOSE 10000

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:10000/ || exit 1

# Start the server
CMD ["node", "dist/index.js"] 