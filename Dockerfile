# Use an official Node.js image with npm
FROM node:14 as builder

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
FROM nginx:alpine

# Copy the built Angular app from the builder image
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80 for the HTTP server
EXPOSE 80

# The default command to start the HTTP server
CMD ["nginx", "-g", "daemon off;"]
