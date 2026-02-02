# Use Node.js 18
FROM node:18

# Set working directory inside container
WORKDIR /Joshi_Anchal_site

# Copy package.json and package-lock.json from anchal_site
COPY anchal_site/package*.json ./

# Install dependencies
RUN npm install

# Copy all React app files from anchal_site
COPY anchal_site/ ./

# Expose port 7775
EXPOSE 7775

# Start React on port 7775 and listen on all interfaces
CMD ["npm", "start", "--", "--port", "7775", "--host", "0.0.0.0"]
