FROM Node-20 Alpine

WORKDIR /app

COPY package.json *./ # Copy package.json and package-lock.json (if exists)

RUN npm install # Install dependencies

COPY . . # Copy the rest of the application code

EXPOSE 3000 # Expose the port your app runs on

CMD ["npm", "start"] # Start the application