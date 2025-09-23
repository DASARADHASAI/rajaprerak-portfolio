# CI/CD Pipeline Setup Guide

This repository has been configured with a simple CI/CD pipeline using GitHub Actions. The pipeline automatically builds, tests, and deploys your portfolio website to GitHub Pages.

## 🚀 Features

- **Automated Testing**: Runs basic health checks on every push and pull request
- **Static Site Deployment**: Automatically deploys to GitHub Pages on successful builds
- **No External Tokens Required**: Uses GitHub's built-in `GITHUB_TOKEN`
- **Branch Protection**: Only deploys from main/master branch
- **Pull Request Checks**: Validates code before merging

## 📋 Pipeline Overview

### Jobs

1. **Build and Test** (`build-and-test`)
   - Checks out the repository
   - Sets up Node.js environment
   - Installs dependencies
   - Runs basic health checks
   - Tests server startup

2. **Deploy** (`deploy`)
   - Only runs on successful build and test
   - Only runs on push to main/master branch
   - Prepares files for deployment
   - Deploys to GitHub Pages using built-in token

3. **Notify** (`notify`)
   - Provides deployment status feedback
   - Runs after deployment completion

### Triggers

The pipeline runs on:
- Push to `main` or `master` branch
- Pull requests to `main` or `master` branch

## ⚙️ Setup Instructions

### 1. Enable GitHub Pages

1. Go to your repository settings
2. Navigate to "Pages" section
3. Under "Source", select "GitHub Actions"
4. Save the settings

### 2. Repository Permissions

The workflow uses GitHub's built-in `GITHUB_TOKEN` with these permissions:
- `pages: write` - Deploy to GitHub Pages
- `id-token: write` - Verify deployment source
- `contents: read` - Read repository contents

These permissions are automatically granted and don't require manual setup.

### 3. Branch Protection (Optional but Recommended)

To ensure code quality:
1. Go to repository Settings → Branches
2. Add a rule for `main` (or `master`)
3. Enable "Require status checks to pass before merging"
4. Select the "Build and Test" check

## 🔧 Local Development

### Development Server

```bash
# Install dependencies
npm install

# Start development server
npm run dev
```

The site will be available at `http://localhost:3000`

### File Structure

```
├── .github/
│   └── workflows/
│       └── ci-cd.yml           # CI/CD pipeline configuration
├── assets/                     # Static assets (CSS, JS, images)
├── projects/                   # Project pages
├── index.html                  # Main portfolio page
├── server.js                   # Express server for local dev
└── package.json                # Node.js dependencies
```

## 🌐 Deployment

### Automatic Deployment

- Every push to `main`/`master` triggers automatic deployment
- Deployment URL: `https://[username].github.io/[repository-name]`
- Deployment status visible in Actions tab

### Manual Deployment

You can manually trigger deployment by:
1. Going to Actions tab
2. Selecting "CI/CD Pipeline" workflow
3. Clicking "Run workflow"

## 📊 Monitoring

### Check Pipeline Status

1. Go to the "Actions" tab in your repository
2. View recent workflow runs
3. Click on any run to see detailed logs

### Deployment Status

- Green checkmark: Successful deployment
- Red X: Failed deployment (check logs for details)
- Yellow dot: Deployment in progress

## 🐛 Troubleshooting

### Common Issues

1. **Deployment fails**: Check if GitHub Pages is enabled in repository settings

2. **Build fails**: 
   - Verify `package.json` is valid JSON
   - Ensure all required files exist (`index.html`, `server.js`)
   - Check that dependencies install correctly

3. **Page not loading**: 
   - Wait a few minutes after deployment
   - Check if the correct branch is set in Pages settings
   - Verify the deployment URL format

### Getting Help

- Check the Actions tab for detailed error logs
- Verify all setup steps were completed
- Ensure repository has the correct file structure

## 🔒 Security

This pipeline:
- Uses only built-in GitHub tokens (no external secrets required)
- Runs in isolated environments
- Only deploys from protected branches
- Includes basic security checks

## 📈 Next Steps

Consider adding these enhancements:
- HTML/CSS/JS linting (ESLint, Prettier)
- Automated testing with Jest or similar
- Performance audits with Lighthouse
- Dependency vulnerability scanning
- Custom domain setup for GitHub Pages

---

**Note**: This is a basic CI/CD setup. For production applications, consider adding more comprehensive testing, security scanning, and deployment strategies.