# Bridges Glama's automated introspection checks to the live, hosted Yondry MCP server.
#
# Yondry is a REMOTE server (Streamable HTTP) at https://yondry.app/mcp — its real
# implementation is closed-source, so there's nothing to build here. This thin container
# simply starts a stdio MCP bridge (`mcp-remote`) that proxies to the live endpoint, so
# Glama's "start + respond to introspection" check runs against the real, running server.
#
# Not required in the repo by Glama (it can be pasted into the server's Glama admin page),
# but kept here as the canonical definition of how the hosted server is checked.
FROM node:20-slim
ENTRYPOINT ["npx", "-y", "mcp-remote", "https://yondry.app/mcp"]
