# Use the official Node.js 20 image as the base image

FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies using npm ci for a clean install
RUN npm ci

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js application
RUN npm run build

# Expose port 5000 for the application
EXPOSE 5000

# Start the application using npm start
CMD ["npm", "start"]