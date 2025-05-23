# Use the official Node.js LTS image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and lock file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the app
CMD ["node", "src/app.js"]
