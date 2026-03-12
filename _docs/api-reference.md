---
title: API Reference
description: Complete reference for the Pinel API.
category: Reference
order: 3
---

## Core API

### `pinel.create(options)`

Creates a new Pinel application instance.

```javascript
import { create } from 'pinel';

const app = create({
  port: 3000,
  middleware: []
});
```

**Parameters:**

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `options.port` | `number` | No | Server port (default: 3000) |
| `options.middleware` | `array` | No | Middleware stack |
| `options.plugins` | `array` | No | Plugin list |

### `app.use(middleware)`

Register middleware to the application pipeline.

```javascript
app.use(async (ctx, next) => {
  console.log(`${ctx.method} ${ctx.path}`);
  await next();
});
```

### `app.route(path, handler)`

Define a route handler.

```javascript
app.route('/api/users', {
  get: async (ctx) => {
    return { users: await getUsers() };
  },
  post: async (ctx) => {
    return await createUser(ctx.body);
  }
});
```

## Plugin API

### Defining a Plugin

```javascript
export function myPlugin(options = {}) {
  return {
    name: 'my-plugin',
    setup(app) {
      app.hook('beforeBuild', () => {
        console.log('Building...');
      });
    }
  };
}
```

### Lifecycle Hooks

- `beforeBuild` — Called before the build starts
- `afterBuild` — Called after the build completes
- `onRequest` — Called on every incoming request
- `onError` — Called when an error occurs
