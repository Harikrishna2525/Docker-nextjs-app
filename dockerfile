
# Use an official Node.js runtime as a baseline image
FROM node:22-alpine

WORKDIR /app

# Copy package.json and package-lock.json (if available) to the working directory

COPY package*.json ./

# Install dependencies

RUN npm install 

# Copy the rest of the application code to the working directory

COPY . . 

# Expose the port that the application will run on
EXPOSE 3000 


# Start the application

CMD ["npm", "start"] 