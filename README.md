# MCP Server for langfuse

[![npm version](https://img.shields.io/npm/v/shouting-mcp-langfuse.svg)](https://www.npmjs.com/package/shouting-mcp-langfuse)

A Model Context Protocol (MCP) server implementation for integrating AI assistants with Langfuse workspaces.

<a href="https://glama.ai/mcp/servers/@z9905080/mcp-langfuse">
  <img width="380" height="200" src="https://glama.ai/mcp/servers/@z9905080/mcp-langfuse/badge" alt="Server for langfuse MCP server" />
</a>

## Overview

This package provides an MCP server that enables AI assistants to interact with Langfuse workspaces. It allows AI models to:

- Query LLM Metrics by Time Range

## Installation

```bash
# Install from npm
npm install shouting-mcp-langfuse

# Or install globally
npm install -g shouting-mcp-langfuse
```

You can find the package on npm: [shouting-mcp-langfuse](https://www.npmjs.com/package/shouting-mcp-langfuse/access)

## Prerequisites

Before using the server, you need to create a Langfuse project and obtain your project's public and private keys. You can find these keys in the Langfuse dashboard.

1. set up a Langfuse project
2. get the public and private keys
3. set the environment variables

## Configuration

The server requires the following environment variables:

- `LANGFUSE_DOMAIN`: The Langfuse domain (default: `https://api.langfuse.com`)
- `LANGFUSE_PUBLIC_KEY`: Your Langfuse Project Public Key
- `LANGFUSE_PRIVATE_KEY`: Your Langfuse Project Private Key

## Usage

### Running as a CLI Tool

```bash
# Set environment variables
export LANGFUSE_DOMAIN="https://api.langfuse.com"
export LANGFUSE_PUBLIC_KEY="your-public-key"
export LANGFUSE_PRIVATE_KEY="your-private

# Run the server
mcp-server-langfuse
```

### Using in Your Code

```typescript
import { Server } from "@modelcontextprotocol/sdk/server/index.js";
import { langfuseClient } from "shouting-mcp-langfuse";

// Initialize the server and client
const server = new Server({...});
const langfuseClient = new LangfuseClient(process.env.LANGFUSE_DOMAIN, process.env.LANGFUSE_PUBLIC_KEY, process.env.LANGFUSE_PRIVATE_KEY);

// Register your custom handlers
// ...
```

## Available Tools

The server provides the following langfuse integration tools:

- `getLLMMetricsByTimeRange`: Get LLM Metrics by Time Range

## License

ISC

## Author

shouting.hsiao@gmail.com

## Repository

https://github.com/z9905080/mcp-langfuse