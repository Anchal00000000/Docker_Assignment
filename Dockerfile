# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /joshi_anchal_site

# Copy package.json and package-lock.json
COPY anchal_site/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the site files
COPY anchal_site/ .

# Expose port 7775
EXPOSE 7775

# Start the React app
CMD ["npm", "start"]
