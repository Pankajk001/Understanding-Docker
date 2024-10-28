# Use the official Node.js 20 image as the base image.
# This means the container will have Node.js 20 installed and ready to use.
FROM node:20

# Set the working directory inside the container to /app.
# All subsequent commands will run inside this directory.
WORKDIR /app

# Copy all files from the current directory on the host machine to the /app directory inside the container.
COPY . .

# Install the dependencies listed in the package.json file using npm.
RUN npm install

# Open port 3000 on the container, allowing external access to this port.
# This is useful if the app runs on port 3000 (e.g., for a web server).
EXPOSE 3000

# Define the command to start the application when the container runs.
# Here, it will execute 'npm start', which usually starts the app.
CMD ["npm", "start"]
