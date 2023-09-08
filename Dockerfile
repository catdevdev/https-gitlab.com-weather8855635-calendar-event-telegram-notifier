# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
# COPY package*.json ./
COPY . .

# Install dependencies
RUN npm i

# Copy all files from the current directory to the working directory
# COPY . .

# Define the command to run your application
CMD ["npm", "start"]
