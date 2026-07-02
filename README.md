# Daily Affirmation — legal site (GitHub Pages)

Static site for **Google Play** privacy policy URL and public terms.

## Publish to GitHub (`13ond21`)

### 1. Create repo on GitHub

1. Log in as **[13ond21](https://github.com/13ond21)**.
2. **New repository**
   - Name: **`daily-affirmation-legal`** (must match URLs in `index.html` or edit them)
   - Public
   - Do **not** add README if you will push from PC (or merge later)

### 2. Push this folder from your PC

```powershell
cd "C:\Users\corey\Desktop\App Builds\daily-affirmation\website"
git init
git add index.html privacy-policy.html terms-and-conditions.html styles.css README.md
git commit -m "Add privacy policy and terms for Daily Affirmation"
git branch -M main
git remote add origin https://github.com/13ond21/daily-affirmation-legal.git
git push -u origin main
```

(Use GitHub Desktop or SSH if you prefer.)

### 3. Enable GitHub Pages

1. Repo → **Settings** → **Pages**
2. **Build and deployment** → Source: **Deploy from a branch**
3. Branch: **main** → folder **/ (root)** → **Save**
4. Wait 1–5 minutes. Site base URL:

   **`https://13ond21.github.io/daily-affirmation-legal/`**

## URLs for Play Console

| Use | URL |
|-----|-----|
| **Privacy policy** (required) | `https://13ond21.github.io/daily-affirmation-legal/privacy-policy.html` |
| Terms (optional in Console; good for store/support) | `https://13ond21.github.io/daily-affirmation-legal/terms-and-conditions.html` |
| Home | `https://13ond21.github.io/daily-affirmation-legal/` |

Paste the **privacy policy** link into: **Play Console → App content → Privacy policy**.

## Customize contact email

Support contact: **autoaccentsni@gmail.com** (in privacy and terms pages).

## Different repo name?

If the repo is not `daily-affirmation-legal`, update:

- `index.html` (privacy URL line)
- `privacy-policy.html` / `terms` GitHub issue links

Pages URL pattern: `https://13ond21.github.io/YOUR-REPO-NAME/privacy-policy.html`