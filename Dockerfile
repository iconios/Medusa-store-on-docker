# Development Dockerfile for Medusa
FROM node:20-alpine

# Set working directory
WORKDIR /server

# Copy the package file
COPY package.json yarn.lock .yarnrc.yml ./

# Install the dependencies
RUN npm install

# Copy other files
COPY . .

# Assign the port for the Medusa app
EXPOSE 9000

# Define entry point
CMD ["./start.sh"]