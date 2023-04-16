# Use the official Node.js v14 image as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /gatsby-starter-blog

# Copy package.json and package-lock.json into the container at /app
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container at /app
COPY . .

# Build the application
RUN gatsby build

# Expose port 8000 to the host machine
EXPOSE 8000

# Start the application
CMD [ "gatsby", "serve" ]
