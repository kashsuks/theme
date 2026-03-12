---
title: Getting Started
description: Learn how to install and set up Pinel in minutes.
category: Basics
order: 1
---

## Installation

Get started with Pinel by installing it via your preferred package manager:

```bash
# Using npm
npm install -g pinel

# Using Homebrew
brew install pinel
```

## Quick Start

Once installed, create a new project:

```bash
pinel init my-project
cd my-project
pinel dev
```

Your app will be running at `http://localhost:3000`.

## Project Structure

A new Pinel project has the following layout:

| Path | Description |
|------|------------|
| `src/` | Your application source code |
| `config/` | Configuration files |
| `public/` | Static assets served as-is |
| `tests/` | Test files |

## Next Steps

- Read the [Configuration](../configuration/) guide to customize your setup
- Explore the [API Reference](../api-reference/) for detailed documentation
- Check out the [Examples](../examples/) for common patterns
