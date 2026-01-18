---
name: qa-regression
description: Complete QA regression testing workflow using Playwright. Includes setup, test structure, and common patterns for auth, dashboards, and CRUD operations.
source: skillcreatorai
license: MIT
---

# QA Regression Testing

## Setup
```bash
npm init -y
npm install playwright @playwright/test
npx playwright install
```

## Test Structure
Create tests in `tests/` folder:

```
tests/
├── auth/
│   ├── login.spec.ts
│   └── logout.spec.ts
├── dashboard/
│   └── load.spec.ts
├── users/
│   ├── create.spec.ts
│   └── delete.spec.ts
└── regression.spec.ts   # Full suite
```

## Common Test Skills

### Login Test
```typescript
// tests/auth/login.spec.ts
import { test, expect } from '@playwright/test';

test.describe('Login Flow', () => {
  test('should login with valid credentials', async ({ page }) => {
    await page.goto('/login');

    await page.fill('[data-testid="email"]', process.env.TEST_EMAIL!);
    await page.fill('[data-testid="password"]', process.env.TEST_PASSWORD!);
    await page.click('[data-testid="submit"]');

    // Verify redirect to dashboard
    await expect(page).toHaveURL(/dashboard/);
    await expect(page.locator('[data-testid="user-menu"]')).toBeVisible();
  });

  test('should show error for invalid credentials', async ({ page }) => {
    await page.goto('/login');

    await page.fill('[data-testid="email"]', 'wrong@example.com');
    await page.fill('[data-testid="password"]', 'wrongpassword');
    await page.click('[data-testid="submit"]');

    await expect(page.locator('[data-testid="error-message"]')).toBeVisible();
  });
});
```

### Dashboard Load Test
```typescript
// tests/dashboard/load.spec.ts
import { test, expect } from '@playwright/test';
import { login } from '../helpers/auth';

test.describe('Dashboard', () => {
  test.beforeEach(async ({ page }) => {
    await login(page);
  });

  test('should load dashboard within 3 seconds', async ({ page }) => {
    const start = Date.now();
    await page.goto('/dashboard');
    await page.waitForSelector('[data-testid="dashboard-content"]');
    const loadTime = Date.now() - start;

    expect(loadTime).toBeLessThan(3000);
  });

  test('should display all widgets', async ({ page }) => {
    await page.goto('/dashboard');

    await expect(page.locator('[data-testid="stats-widget"]').toBeVisible();
    await expect(page.locator('[data-testid="chart-widget"]').toBeVisible();
    await expect(page.locator('[data-testid="activity-widget"]').toBeVisible();
  });

  test('should refresh data on button click', async ({ page }) => {
    await page.goto('/dashboard');

    const initialValue = await page.locator('[data-testid="last-updated"]').textContent();
    await page.click('[data-testid="refresh-button"]');
    await page.waitForTimeout(1000);
    const newValue = await page.locator('[data-testid="last-updated"]').textContent();

    expect(newValue).not.toBe(initialValue);
  });
});
```

### Create User Test
```typescript
// tests/users/create.spec.ts
import { test, expect } from '@playwright/test';
import { login } from '../helpers/auth';
import { generateTestUser, deleteTestUser } from '../helpers/users';

test.describe('User Creation', () => {
  let testUser: { email: string; name: string };

  test.beforeEach(async ({ page }) => {
    await login(page);
    testUser = generateTestUser();
  });

  test.afterEach(async () => {
    // Cleanup
    await deleteTestUser(testUser.email);
  });

  test('should create new user successfully', async ({ page }) => {
    await page.goto('/users/new');

    await page.fill('[data-testid="user-name"]', testUser.name);
    await page.fill('[data-testid="user-email"]', testUser.email);
    await page.selectOption('[data-testid="user-role"]', 'member');
    await page.click('[data-testid="create-user-btn"]');

    // Verify success
    await expect(page.locator('[data-testid="success-toast"]').toBeVisible();
    await expect(page).toHaveURL(/users/);

    // Verify user appears in list
    await expect(page.locator(`text=${testUser.email}`)).toBeVisible();
  });

  test('should validate required fields', async ({ page }) => {
    await page.goto('/users/new');
    await page.click('[data-testid="create-user-btn"]');

    await expect(page.locator('[data-testid="name-error"]').toBeVisible();
    await expect(page.locator('[data-testid="email-error"]').toBeVisible();
  });
});
```

## Shared Helpers

### Auth Helper
```typescript
// tests/helpers/auth.ts
import { Page } from '@playwright/test';

export async function login(page: Page) {
  await page.goto('/login');
  await page.fill('[data-testid="email"]', process.env.TEST_EMAIL!);
  await page.fill('[data-testid="password"]', process.env.TEST_PASSWORD!);
  await page.click('[data-testid="submit"]');
  await page.waitForURL('/dashboard');
}
```

## Full Regression Suite
```typescript
// tests/regression.spec.ts
import { test } from '@playwright/test';
import './auth/login.spec';
import './dashboard/load.spec';
import './users/create.spec';

test.describe('Full Regression Suite', () => {
  // Config for full run
  test.use({ viewport: { width: 1280, height: 720 } });
});
```

## Playwright Config
```typescript
// playwright.config.ts
import { PlaywrightTestConfig } from '@playwright/test';

const config: PlaywrightTestConfig = {
  testDir: './tests',
  timeout: 30000,
  retries: 2,
  use: {
    headless: true,
    baseURL: process.env.BASE_URL || 'http://localhost:3000',
    screenshot: 'only-on-failure',
    video: 'retain-on-failure',
  },
  projects: [
    { name: 'Chrome', use: { browserName: 'chromium' } },
    { name: 'Firefox', use: { browserName: 'firefox' } },
    { name: 'Safari', use: { browserName: 'webkit' } },
  ],
};
export default config;
```

## Running Tests
```bash
# Run all tests
npx playwright test

# Run specific file
npx playwright test tests/auth/login.spec.ts

# Run in UI mode
npx playwright test --ui

# Debug mode
npx playwright test --debug
```

## Best Practices
- Use `data-testid` selectors for stability
- Isolate tests (don't rely on state from other tests)
- Use `.env` for secrets (never commit credentials)
- Clean up data in `afterEach` or `afterAll`
- Group related tests with `test.describe`
