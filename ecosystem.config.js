module.exports = {
  apps: [
    {
      name: "mcp-main",
      script: "npx",
      args: "@typingmind/mcp $MCP_AUTH_TOKEN --port $PORT",
    },
    {
      name: "mcp-installer",
      script: "npx",
      args: "@mcpmarket/mcp-auto-install --port $INSTALLER_PORT",
      env: {
        MCP_AUTH_TOKEN: process.env.MCP_AUTH_TOKEN
      }
    }
  ]
};
