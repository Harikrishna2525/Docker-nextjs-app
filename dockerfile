# Use an official Node.js runtime as a parent image (Fixed typo here)
FROM node:20-alpine 

# Set the working directory in the container
WORKDIR /app 

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies (Changed to 'npm ci' for reliable, clean CI/CD builds)
RUN npm ci

# Copy the rest of the application code to the working directory
COPY . .

# Build the application
RUN npm run build

# Expose the port that the application will run on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
