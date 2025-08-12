# Use an official Node.js runtime as a parent image
FROM node:22-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies cleanly and without dev dependencies
RUN npm ci --omit=dev

# Copy the rest of the application's source code
COPY . .

# Build the TypeScript source code
RUN npm run build

# The server requires these environment variables to be set at runtime:
# LANGFUSE_PUBLIC_KEY
# LANGFUSE_PRIVATE_KEY
# LANGFUSE_DOMAIN (optional, defaults to https://api.langfuse.com)

# The command to run the application
CMD [ "node", "dist/index.js" ]
