# Build & Run Instructions

## No Build Required! 🎉

This is a web app - just open it in your browser!

## Quick Start

### Option 1: Direct File Open (Simplest)
1. Open your web browser (Chrome, Safari, Firefox, Edge)
2. Drag `index.html` into the browser window, or
3. Right-click `index.html` → Open With → Choose your browser

### Option 2: Local Web Server (Recommended)

#### Using Python (Pre-installed on Mac/Linux)
```bash
cd "/Users/witaskir/Library/CloudStorage/OneDrive-Mercedes-Benz(corpdir.onmicrosoft.com)/Desktop/GOOD VIBES/Show me"

# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```
Then open: `http://localhost:8000`

#### Using Node.js (if installed)
```bash
npx http-server
```

#### Using Live Server (VS Code Extension)
1. Install "Live Server" extension in VS Code
2. Right-click `index.html`
3. Select "Open with Live Server"

## Development

### Edit Files
- `index.html` - HTML structure
- `style.css` - Styling and animations
- `script.js` - JavaScript interactivity

### View Changes
- Changes are reflected immediately when you save (if using Live Server)
- Otherwise, refresh the browser (Cmd+R or F5)

## Testing

### Test on Different Devices
- **Desktop**: Open in any browser
- **Tablet**: Open in browser on tablet
- **Phone**: Open file URL or local server on mobile device via network

### Test Fullscreen Mode
- Click "Fullscreen Mode" button
- Or press Alt+F
- Press Esc to exit

## File Structure

```
Show me/
├── index.html    - Main app (open this!)
├── style.css     - Styling
├── script.js     - Logic
├── README.md     - Documentation
└── BUILD.md      - This file
```

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Page appears blank | Refresh browser, check console (F12) for errors |
| Colors not updating | Clear browser cache (Cmd+Shift+Delete) |
| Fullscreen not working | Try pressing Alt+F instead of button |
| Local server won't start | Check port 8000 is not in use |

## Browser Console

Open Developer Tools with F12 (or Cmd+Option+I on Mac) to see any errors.
