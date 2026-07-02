# Pushes website/ to github.com/13ond21/daily-affirmation-legal
# Run from repo root or from website/

$ErrorActionPreference = "Stop"
$siteDir = Split-Path -Parent $PSScriptRoot
Set-Location $siteDir

if (-not (Test-Path ".git")) {
    git init
    git branch -M main
}

git add index.html privacy-policy.html terms-and-conditions.html styles.css site.js README.md
if (Test-Path "premium_photos") { git add premium_photos/ }
if (Test-Path "screenshots") { git add screenshots/ }
if (Test-Path ".nojekyll") { git add .nojekyll }
$status = git status --porcelain
if ($status) {
    git commit -m "Update Daily Affirmation site and legal pages"
} else {
    Write-Host "No changes to commit."
}

$remote = git remote get-url origin 2>$null
if (-not $remote) {
    git remote add origin "https://github.com/13ond21/daily-affirmation-legal.git"
    Write-Host "Added remote origin. First time: create empty repo 'daily-affirmation-legal' on GitHub, then run this script again."
}

Write-Host "Pushing to origin main..."
git push -u origin main
Write-Host ""
Write-Host "Enable Pages: GitHub repo -> Settings -> Pages -> main / root"
Write-Host "Privacy URL: https://13ond21.github.io/daily-affirmation-legal/privacy-policy.html"