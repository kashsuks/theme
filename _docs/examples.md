---
title: Examples
description: Common patterns and examples for building with Pinel.
category: Reference
order: 4
---

## Basic Server

A minimal Pinel server:

```javascript
import { create } from 'pinel';

const app = create();

app.route('/', {
  get: () => ({ message: 'Hello, Pinel!' })
});

app.listen();
```

## With Middleware

Adding authentication and logging:

```javascript
import { create } from 'pinel';
import { auth, logger } from 'pinel/middleware';

const app = create();

app.use(logger());
app.use(auth({ secret: process.env.PINEL_SECRET }));

app.route('/api/protected', {
  get: (ctx) => ({ user: ctx.user })
});

app.listen();
```

## Database Integration

Connect to a database with plugins:

```javascript
import { create } from 'pinel';
import { database } from '@pinel/database';

const app = create({
  plugins: [
    database({
      url: process.env.PINEL_DATABASE_URL,
      pool: { min: 2, max: 10 }
    })
  ]
});

app.route('/api/users', {
  get: async (ctx) => {
    const users = await ctx.db.query('SELECT * FROM users');
    return { users };
  }
});

app.listen();
```

## Static File Serving

Serve static files from a directory:

```javascript
import { create } from 'pinel';
import { serve } from 'pinel/static';

const app = create();

app.use(serve('public', {
  maxAge: 86400,
  gzip: true
}));

app.listen();
```
