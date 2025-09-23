# Quick Start Guide for CI/CD Pipeline

## 🚀 What's Been Set Up

Your portfolio website now has a complete CI/CD pipeline that:

1. **Automatically tests** your code on every push and pull request
2. **Automatically deploys** to GitHub Pages when you push to main/master
3. **Uses no external tokens** - only GitHub's built-in security

## 📁 Files Added

- `.github/workflows/ci-cd.yml` - The main CI/CD pipeline configuration
- `CI-CD-README.md` - Detailed documentation
- `QUICK-START.md` - This quick guide

## ⚡ Immediate Next Steps

### 1. Enable GitHub Pages
1. Go to your repository on GitHub
2. Click Settings → Pages
3. Under "Source", select **"GitHub Actions"**
4. Save

### 2. Push Your Code
```bash
git add .
git commit -m "Add CI/CD pipeline"
git push origin main
```

### 3. Watch It Deploy
- Go to the "Actions" tab in your repository
- You'll see the pipeline running
- In ~2-3 minutes, your site will be live at: `https://[username].github.io/[repository-name]`

## 🎯 What Happens When You Push

1. **Tests Run**: Checks if your files are valid and the server can start
2. **Deploy Starts**: If tests pass, deployment to GitHub Pages begins
3. **Site Goes Live**: Your updated portfolio is available on the web

## 🔧 Local Development

```bash
# Install dependencies
npm install

# Start local server
npm run dev

# Visit: http://localhost:3000
```

## 🆘 Need Help?

- Check the Actions tab for build/deploy status
- Look at `CI-CD-README.md` for detailed troubleshooting
- Ensure GitHub Pages is set to "GitHub Actions" in repository settings

---

**That's it!** Your portfolio now has professional CI/CD deployment. Every time you push changes, your live site updates automatically. 🎉