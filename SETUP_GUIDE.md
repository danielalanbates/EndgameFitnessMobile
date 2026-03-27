# GitHub Actions CI/CD Setup Guide

## Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `EndgameFitnessMobile`
3. Make it private (recommended)
4. Click "Create repository"

## Step 2: Push Code to GitHub

Open Terminal and run:

```bash
cd "/Users/daniel/Library/Application Support/BatesAI/data/software-developer/EndgameFitnessMobile"
git init
git add .
git commit -m "Initial commit: Endgame Fitness iOS app with CI/CD"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/EndgameFitnessMobile.git
git push -u origin main
```

## Step 3: Get App Store Connect API Credentials

1. Go to https://appstoreconnect.apple.com
2. Click your profile icon → Users and Access
3. Click the "Keys" tab
4. Click the "+" button to create a new key
5. Name it "GitHub Actions CI/CD"
6. Set access to "App Manager"
7. Click "Generate"
8. **Download the .p8 file immediately** (you can only download it once)
9. Note the **Key ID** and **Issuer ID** shown on screen

## Step 4: Add GitHub Secrets

Go to your GitHub repo → Settings → Secrets and variables → Actions → New repository secret

Add these 4 secrets:

| Secret Name | Value |
|-------------|-------|
| `APP_STORE_CONNECT_API_KEY_ID` | The Key ID from Step 3 (e.g., ABC123DEF4) |
| `APP_STORE_CONNECT_API_ISSUER_ID` | The Issuer ID from Step 3 (UUID format) |
| `APP_STORE_CONNECT_API_KEY_CONTENT` | Open the downloaded .p8 file and copy ALL contents |
| `APPLE_TEAM_ID` | Your Apple Developer Team ID (found at https://developer.apple.com/account/#/membership) |

## Step 5: Configure TestFlight

1. Go to https://appstoreconnect.apple.com
2. Click "My Apps"
3. Create a new app (if not already created)
4. Bundle ID must match: `com.bates.endgamefitness`
5. Go to the TestFlight tab
6. Add your Apple ID as an internal tester

## Step 6: Trigger First Build

Push any change to the main branch:

```bash
echo "# Test" >> README.md
git add README.md
git commit -m "Trigger CI/CD build"
git push
```

Go to GitHub repo → Actions tab to watch the build progress.

## Step 7: Install on iPhone

1. Wait for the GitHub Actions build to complete (~10-15 minutes)
2. Open the App Store on your iPhone
3. Search for "TestFlight" and install it
4. Open TestFlight
5. Accept the invitation email (sent automatically)
6. Install Endgame Fitness from TestFlight

## Troubleshooting

**Build fails with code signing errors:**
- Ensure your Apple Developer account is active
- Verify the Team ID is correct
- Check that the bundle ID is registered in your Apple Developer account

**TestFlight invitation not received:**
- Check spam folder
- Add testflight@apple.com to contacts
- Manually add tester in App Store Connect under TestFlight → App Store Connect Users

**App won't install:**
- Ensure iOS 16.0 or later on your iPhone
- Check that your Apple ID is trusted for development (Settings → General → VPN & Device Management)
