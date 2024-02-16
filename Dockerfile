# Use an official Node.js image with npm for building
FROM node:16 as builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Angular app for production
RUN npm run build --prod

# Use a lightweight HTTP server to serve the Angular app
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the built Angular app from the builder image
COPY --from=builder /app/dist /app

# Expose port 80 if needed
# EXPOSE 80

# The default command to start the application
CMD ["npm", "start"]
