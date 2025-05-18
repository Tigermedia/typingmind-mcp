FROM node:18-alpine

WORKDIR /app

RUN npm install -g @typingmind/mcp \
    @techspawn/woocommerce-mcp-server \
    stefans71/wordpress-mcp-server


EXPOSE 8080

# Do NOT hardcode the token here for production; use Railway Variables instead.
CMD ["sh", "-c", "npx @typingmind/mcp $MCP_AUTH_TOKEN --port $PORT"]
