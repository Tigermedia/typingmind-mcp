FROM node:18-alpine

WORKDIR /app

# Install the MCP connector globally (correct package)
RUN npm install -g @typingmind/mcp

EXPOSE 8080

# Set your authentication token as an environment variable (replace with your own secret in production)
ENV MCP_AUTH_TOKEN=b7d2e1f4c9a8e6f1d0b4a5c3e2f9a7b6c8d1e2f3a4b5c6d7e8f9a0b1c2d2844f5

# Start the MCP connector, using the PORT env variable provided by Railway
CMD ["sh", "-c", "npx @typingmind/mcp $MCP_AUTH_TOKEN --port $PORT"]
