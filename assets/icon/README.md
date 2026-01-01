# App Icon Setup

To customize your app icon:

1. **Create or obtain an app icon image**
   - Recommended size: 1024x1024 pixels
   - Format: PNG with transparency support
   - Name it: `app_icon.png`

2. **Place the icon file here**
   - Put your `app_icon.png` file in this directory (`assets/icon/`)

3. **Generate the icons**
   - Run: `flutter pub get`
   - Run: `dart run flutter_launcher_icons`

4. **Rebuild your app**
   - The icons will be automatically applied to all platforms (Android, iOS, Web, Windows, macOS)

## Icon Requirements:
- **Size**: 1024x1024 pixels (square)
- **Format**: PNG
- **Background**: Can be transparent or solid color
- **Design**: Make sure important elements are within the safe area (avoid corners and edges)

## Tips:
- Use a design tool like Figma, Canva, or Adobe Illustrator to create your icon
- Test your icon on different backgrounds to ensure it looks good
- Keep the design simple and recognizable at small sizes

