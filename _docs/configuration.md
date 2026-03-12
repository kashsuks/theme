---
title: Configuration
description: Configure Pinel to fit your project's needs.
category: Basics
order: 2
---

## Configuration File

Pinel uses a `pinel.config.js` file at the root of your project:

```javascript
export default {
  port: 3000,
  mode: 'development',
  plugins: [],
  build: {
    outDir: 'dist',
    minify: true
  }
}
```

## Environment Variables

Pinel automatically loads `.env` files:

- `.env` — loaded in all cases
- `.env.local` — loaded in all cases, ignored by git
- `.env.development` — loaded in development mode
- `.env.production` — loaded in production mode

Access environment variables via `process.env`:

```javascript
const apiUrl = process.env.PINEL_API_URL;
```

> Only variables prefixed with `PINEL_` are exposed to your application code for security.

## Build Options

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `outDir` | `string` | `"dist"` | Output directory |
| `minify` | `boolean` | `true` | Minify output |
| `sourcemap` | `boolean` | `false` | Generate source maps |
| `target` | `string` | `"es2020"` | JavaScript target |
