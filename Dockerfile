# Use an official Node.js image as the base
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the React app
RUN npm run build

# Expose the port your React app will run on
EXPOSE 3000

# Run the React app in development mode
CMD ["npm", "start"]
