# Custom Notification Sound Setup Guide

This guide explains how to add and use a custom notification sound for foreground notifications.

## Step 1: Prepare Your Sound File

### iOS Requirements:
- **Formats**: `.caf`, `.aiff`, `.wav`, or `.mp3`
- **Duration**: Must be less than 30 seconds
- **Recommended**: Use `.caf` format for best compatibility

### Android Requirements:
- **Formats**: `.mp3`, `.ogg`, or `.wav`
- **Duration**: Recommended to be less than 30 seconds
- **Recommended**: Use `.mp3` format

## Step 2: Add Sound File to iOS Project

1. Open your iOS project in Xcode:
   ```bash
   open ios/Runner.xcworkspace
   ```

2. Right-click on the `Runner` folder in the Project Navigator
3. Select "Add Files to 'Runner'..."
4. Choose your sound file (e.g., `notification_sound.caf`)
5. **Important**: Make sure "Copy items if needed" is checked
6. Make sure "Add to targets: Runner" is checked
7. Click "Add"

8. Verify the file is included:
   - Select the `Runner` project in Project Navigator
   - Go to "Build Phases" tab
   - Expand "Copy Bundle Resources"
   - Verify your sound file is listed there

## Step 3: Add Sound File to Android Project

1. Create the `raw` folder if it doesn't exist:
   ```bash
   mkdir -p android/app/src/main/res/raw
   ```

2. Copy your sound file to the raw folder:
   ```bash
   cp your_sound_file.mp3 android/app/src/main/res/raw/notification_sound.mp3
   ```

   **Note**: For Android, use the filename WITHOUT extension when referencing it in code.
   For example, if your file is `notification_sound.mp3`, reference it as `notification_sound`.

## Step 4: Set the Custom Sound in Your Code

In your app initialization (e.g., in `main.dart`), set the custom sound file name:

```dart
import 'package:bookweeks/services/notification_service.dart';

void main() async {
  // ... other initialization code ...
  
  // Set custom notification sound
  // Provide filename WITH extension (e.g., "notification_sound.caf")
  // The code automatically handles platform differences:
  // - iOS: Uses full filename with extension
  // - Android: Automatically strips extension
  NotificationService().setCustomSoundFileName('notification_sound.caf');
  
  // ... rest of your code ...
}
```

### Important Notes:

- **Provide filename WITH extension** (e.g., `"notification_sound.caf"`)
- The code automatically handles platform differences:
  - **iOS**: Uses the full filename with extension as-is
  - **Android**: Automatically strips the extension (e.g., `"notification_sound.caf"` → `"notification_sound"`)
- **Best Practice**: Use the same base name for both platforms:
  - iOS file: `notification_sound.caf` (in `ios/Runner/`)
  - Android file: `notification_sound.mp3` (in `android/app/src/main/res/raw/`)
  - Code: `setCustomSoundFileName('notification_sound.caf')` (with extension)

## Step 5: Use System Default Sound

To revert to the system default sound, set it to `null`:

```dart
NotificationService().setCustomSoundFileName(null);
```

## Troubleshooting

### iOS Issues:
- **Sound not playing**: Make sure the file is added to "Copy Bundle Resources" in Build Phases
- **Sound not found**: Verify the filename matches exactly (case-sensitive)
- **Format issues**: Convert your sound to `.caf` format using:
  ```bash
  afconvert input.wav output.caf -d ima4 -f caff -v
  ```

### Android Issues:
- **Sound not playing**: Make sure the file is in `android/app/src/main/res/raw/`
- **Sound not found**: Verify the filename matches exactly (without extension in code)
- **Format issues**: Convert your sound to `.mp3` format

## Example Usage

```dart
// In main.dart or wherever you initialize your app
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize notification service
  await NotificationService().initialize();
  
  // Set custom sound (optional - defaults to system sound if not set)
  NotificationService().setCustomSoundFileName('notification_sound');
  
  runApp(MyApp());
}
```

## Testing

After setting up your custom sound:
1. Use the "Send Test Notification" button in Notification Settings
2. You should hear your custom sound when the notification appears
3. If you don't hear the sound, check the console logs for any errors
