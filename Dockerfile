FROM node:18-alpine

WORKDIR /app

# Install required MCP packages
RUN npm install -g @typingmind/mcp @mcpmarket/mcp-auto-install

# Expose both MCP and installer ports
EXPOSE 8080 8081

# Set environment variables (Railway will override PORT)
ENV MCP_AUTH_TOKEN=b7d2e1f4c9a8e6f1d0b4a5c3e2f9a7b6c8d1e2f3a4b5c6d7e8f9a0b1c2d2844f5
ENV PORT=8080
ENV INSTALLER_PORT=8081

# Start both MCP server and installer using PM2 process manager
RUN npm install -g pm2
CMD ["pm2-runtime", "start", "ecosystem.config.js"]
