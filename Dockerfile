FROM node:18

WORKDIR /app

# Install the MCP connector
RUN npm install -g @typingmind/mcp

# Set the command to run the server
CMD ["sh", "-c", "npx @typingmind/mcp $AUTH_TOKEN"]
