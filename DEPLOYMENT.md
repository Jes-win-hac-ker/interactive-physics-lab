# Deployment Guide

This document explains how to deploy the Interactive Physics Simulation Lab to GitHub Pages.

## Prerequisites

1. A GitHub repository with the project code
2. GitHub Pages enabled in repository settings
3. Node.js and Bun (or npm) installed locally

## Automatic Deployment (Recommended)

The project is configured with GitHub Actions for automatic deployment:

1. **Push to main branch**: Every push to the `main` branch automatically triggers deployment
2. **Check Actions tab**: Monitor deployment progress in the GitHub Actions tab
3. **Access live site**: Once deployed, visit: https://jes-win-hac-ker.github.io/interactive-physics-lab/

## Manual Deployment

If you prefer manual deployment:

```bash
# Build the project
bun run build

# Deploy to GitHub Pages
bun run deploy
```

## Repository Settings

Ensure GitHub Pages is enabled:

1. Go to your repository settings
2. Navigate to "Pages" section
3. Set source to "GitHub Actions"
4. Save the configuration

## Troubleshooting

- **Build failures**: Check the Actions tab for error logs
- **404 errors**: Verify the base path in `vite.config.ts` matches your repository name
- **Assets not loading**: Ensure all asset paths are relative or use the correct base path

## Project Structure

- `dist/` - Built files (auto-generated, ignored by git)
- `.github/workflows/deploy.yml` - GitHub Actions deployment workflow
- `vite.config.ts` - Vite configuration with GitHub Pages settings
- `package.json` - Build and deployment scripts
