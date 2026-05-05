# Crowd Display - Browser App

A simple yet powerful web app for displaying customizable text and information that you can hold up for crowds to see. Works in any modern web browser!

## Features

✨ **Key Capabilities**
- 📝 **Edit Text**: Type any message or information you want to display
- 🎨 **Custom Colors**: Choose any background and text color with color pickers
- 💫 **Flashing Effect**: Enable/disable pulsing animation with adjustable speed
- 📱 **Full Screen Mode**: Optimized for maximum visibility when held up (Alt+F)
- ⚡ **Real-time Updates**: See changes instantly
- 🌐 **Cross-Platform**: Works on Mac, Windows, Linux, tablets, and phones

## Requirements

- Any modern web browser (Chrome, Safari, Firefox, Edge)
- No installation needed!

## Quick Start

1. **Open `index.html`** in your web browser
   - Simply double-click the file, or
   - Drag it to your browser window, or
   - Right-click → Open With → Your browser

2. **Or use a local server** (optional, recommended):
   ```bash
   # Using Python 3
   python -m http.server 8000
   
   # Using Python 2
   python -m SimpleHTTPServer 8000
   
   # Using Node.js
   npx http-server
   ```
   Then visit: `http://localhost:8000`

## Usage

1. **Open the app** in your web browser
2. **Edit the text** in the text field at the bottom
3. **Choose colors** using the color pickers:
   - Background color (behind the text)
   - Text color (the actual text)
4. **Enable flashing** toggle to add a pulsing effect
5. **Adjust speed** if flashing is enabled (0.5x slower to 2x faster)
6. **Click "Fullscreen Mode"** (Alt+F) to display at full screen
7. **Hold up your device** for your audience to see!

## Keyboard Shortcuts

- **Alt+F** - Toggle fullscreen mode
- **Cmd/Ctrl+L** - Focus text input field
- **Esc** - Exit fullscreen mode

## Project Structure

```
Show me/
├── index.html         # Main HTML structure
├── style.css          # Styling and animations
├── script.js          # Interactivity and controls
├── README.md          # This file
└── BUILD.md           # Build instructions
```

## Technical Details

- **Language**: HTML5, CSS3, JavaScript (Vanilla)
- **Compatibility**: Modern browsers (Chrome, Safari, Firefox, Edge)
- **Performance**: Lightweight, no dependencies
- **Animations**: CSS keyframe animations for smooth flashing effect
- **UI**: Fully responsive, works on desktop, tablet, and mobile

## Tips for Best Results

- Use high contrast colors (dark background with light text or vice versa)
- Enable flashing effect to draw attention in crowded environments
- Keep text concise for readability from distance
- Test visibility in different lighting conditions
- Use fullscreen mode for maximum impact
- Close other browser tabs/notifications for cleaner display

## Browser Support

| Browser | Support |
|---------|---------|
| Chrome  | ✅ Full support |
| Safari  | ✅ Full support |
| Firefox | ✅ Full support |
| Edge    | ✅ Full support |

## License

MIT

## Support

For issues or feature requests, check the browser console (F12) for any errors.
