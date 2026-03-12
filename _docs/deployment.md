---
title: Deployment
description: Deploy your Pinel application to production.
category: Guides
order: 5
---

## Building for Production

Create an optimized production build:

```bash
pinel build
```

This outputs to the `dist/` directory by default. The build process:

1. Bundles and tree-shakes your code
2. Minifies JavaScript and CSS
3. Optimizes static assets
4. Generates a production manifest

## Deployment Options

### Docker

```dockerfile
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --production
COPY dist/ ./dist/
EXPOSE 3000
CMD ["node", "dist/server.js"]
```

### Cloud Platforms

Pinel works out of the box with:

- **Vercel** — `vercel deploy`
- **Railway** — Connect your repo and deploy
- **Fly.io** — `fly launch && fly deploy`
- **AWS Lambda** — Use `@pinel/serverless` adapter

### Environment Configuration

Set production environment variables on your platform:

```bash
PINEL_MODE=production
PINEL_PORT=3000
PINEL_DATABASE_URL=postgres://...
PINEL_SECRET=your-secret-key
```

> Always use a secrets manager for sensitive values. Never commit secrets to version control.

## Health Checks

Pinel includes a built-in health check endpoint:

```javascript
app.route('/health', {
  get: () => ({ status: 'ok', uptime: process.uptime() })
});
```
