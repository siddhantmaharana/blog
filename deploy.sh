#!/bin/bash

echo "🔨 Building site with Hugo..."
hugo

if [ $? -ne 0 ]; then
    echo "❌ Hugo build failed!"
    exit 1
fi

echo "📤 Deploying to GitHub Pages..."
cd public
git add .

if git diff --staged --quiet; then
    echo "ℹ️  No changes to deploy"
else
    git commit -m "Site update $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "✅ Deployed to GitHub Pages"
fi

cd ..

echo "💾 Updating source repository..."
git add .

if git diff --staged --quiet; then
    echo "ℹ️  No source changes to commit"
else
    git commit -m "Source update $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "✅ Source repository updated"
fi

echo "🎉 All done! Your site should be live in a few minutes."