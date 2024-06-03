# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Copy .env file
COPY .env .env

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["npm", "start"]
