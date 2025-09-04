#!/bin/bash

# Hugo + Wowchemy GitHub Pages Deployment Script
# This script builds your site and deploys it to GitHub Pages

echo "Building Hugo site..."
hugo

echo "Navigating to public directory..."
cd public

echo "Initializing git in public directory..."
git init

echo "Adding GitHub repository as remote..."
echo "⚠️  IMPORTANT: Replace USERNAME/REPO with your actual GitHub repository!"
# git remote add origin https://github.com/USERNAME/REPO.git

echo "Creating gh-pages branch..."
git checkout -b gh-pages

echo "Adding all files..."
git add .

echo "Creating commit..."
git commit -m "Deploy Hugo Wowchemy site to GitHub Pages"

echo "Pushing to GitHub Pages..."
echo "⚠️  IMPORTANT: Uncomment the line below after setting up your repository!"
# git push -f origin gh-pages

echo ""
echo "🚀 Deployment preparation complete!"
echo ""
echo "Next steps:"
echo "1. Create a GitHub repository for your website"
echo "2. Edit this script and replace USERNAME/REPO with your repository details"
echo "3. Uncomment the git remote and git push lines"
echo "4. Run this script to deploy: ./deploy-gh-pages.sh"
echo "5. Enable GitHub Pages in your repository settings (Settings > Pages > Source: gh-pages branch)"