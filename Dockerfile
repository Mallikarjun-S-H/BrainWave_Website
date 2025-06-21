FROM node:20-slim

WORKDIR /app

# Cleanly install all dependencies (including dev)
COPY package*.json ./
RUN rm -rf node_modules && npm cache clean --force && npm install

# Copy the rest of the project
COPY . .

# Expose Vite's dev port
EXPOSE 5173

# Run Vite dev server
CMD ["npm", "run", "dev"]
