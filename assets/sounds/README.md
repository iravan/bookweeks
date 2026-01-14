# Notification Sound Files

Place your notification sound file here for iOS foreground notifications.

## Setup Instructions:

1. Copy your sound file `notification_sound.caf` to this directory:
   ```bash
   cp /path/to/notification_sound.caf assets/sounds/
   ```

2. The file will be accessible via `AssetSource('sounds/notification_sound')` in the code.

3. Make sure the file is also in `ios/Runner/` and added to Xcode's "Copy Bundle Resources" for background notifications.

## File Requirements:

- Format: `.caf`, `.aiff`, `.wav`, or `.mp3`
- Duration: Less than 30 seconds
- For iOS foreground: File must be in `assets/sounds/` (this directory)
- For iOS background: File must be in `ios/Runner/` and Xcode Build Phases
