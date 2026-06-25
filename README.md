# Yondry — Day Out Planner (MCP server)

> Plan your perfect day out, anywhere — right inside Claude and other MCP clients.

Yondry turns a place and a mood into a real day plan: where to go, in what order, when to
eat, how to get between stops — each stop justified by a concrete reason (rating, distance,
weather fit, what's open). It also serves ready-made neighbourhood guides, and — once you
connect your Yondry account — can plan from your own saved places.

This is the public home of the **Yondry MCP server**, a hosted (remote) MCP server. The app
and backend are closed-source; this repo holds the connector docs and registry metadata.

- **Website:** https://yondry.app
- **Full connector docs:** https://yondry.app/connector
- **Registry:** `io.github.yondry-ltd/day-planner` on [registry.modelcontextprotocol.io](https://registry.modelcontextprotocol.io)

## Add it to Claude

Settings → Connectors → **Add custom connector** → paste:

```
https://yondry.app/mcp
```

Then ask, e.g. *"Use Yondry to plan a relaxed Saturday in Shoreditch."*

Or in any MCP client config:

```json
{
  "mcpServers": {
    "yondry": { "type": "streamable-http", "url": "https://yondry.app/mcp" }
  }
}
```

No signup needed for the core tools.

## Tools

| Tool | Type | What it does |
|------|------|--------------|
| `plan_day` | read-only | Day plan for a named location (+ optional vibe/constraints); returns a timed itinerary + a shareable permalink |
| `get_neighbourhood_guide` | read-only | Intro + verified local highlights + 3 sample day plans for a covered neighbourhood |
| `suggest_swaps` | read-only | Alternative options for one stop in an existing plan |

There's also an authenticated server at `https://yondry.app/mcp/me/` (OAuth 2.1) exposing
`plan_from_my_saves`, which plans from your own saved Yondry places.

## Example prompts

- "Use Yondry to plan a relaxed Saturday in Notting Hill."
- "A rainy-day plan for Greenwich with kids."
- "Show me the Yondry guide to Shoreditch."

## Links

- Privacy policy: https://yondry.app/privacy-policy
- Terms of use: https://yondry.app/terms
- Contact: hello@yondry.app

---

Made with patience in London. Go yonder.
