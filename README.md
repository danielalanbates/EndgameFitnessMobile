# Endgame Fitness Mobile

iOS mobile application for Endgame Fitness workout tracking.

## Setup for GitHub Actions CI/CD

### Required GitHub Secrets

Navigate to your GitHub repository settings → Secrets and variables → Actions, then add:

1. **APP_STORE_CONNECT_API_KEY_ID** - Your App Store Connect API Key ID
2. **APP_STORE_CONNECT_API_ISSUER_ID** - Your App Store Connect API Issuer ID
3. **APP_STORE_CONNECT_API_KEY_CONTENT** - The full content of your .p8 API key file
4. **APPLE_TEAM_ID** - Your Apple Developer Team ID

### How to Get App Store Connect API Credentials

1. Go to [App Store Connect](https://appstoreconnect.apple.com)
2. Navigate to Users and Access → Keys
3. Create a new API key with "App Manager" access
4. Download the .p8 file
5. Copy the Key ID and Issuer ID shown on screen
6. Add all three values to your GitHub repository secrets

### Building Locally

```bash
xcodebuild -scheme EndgameFitnessMobile -destination generic/platform=iOS -configuration Release archive
```

### Testing on iPhone

Once the GitHub Actions workflow runs successfully:
1. The app will be uploaded to TestFlight
2. Open the App Store on your iPhone
3. Go to Updates → TestFlight
4. Accept the TestFlight invitation
5. Install Endgame Fitness from TestFlight
