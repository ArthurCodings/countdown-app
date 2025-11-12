# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 🛠️ Development Commands

### Running the Application
```bash
# Using Python 3 (recommended)
python -m http.server 8000

# Using Node.js
npx serve . -p 8000

# Using PHP
php -S localhost:8000
```

Access at `http://localhost:8000`

For full functionality including music and video features, use the provided startup scripts:
- `quickstart.bat` - Recommended one-click startup (frontend + backend + auto browser open)
- `启动服务器.bat` - Full version startup (frontend + B站 downloader backend)

### Project Structure
```
倒计时氛围感-升级版/
├── index.html          # Main entry point with all HTML structure and UI elements
├── styles.css          # Stylesheet with all themes, animations and CSS variables (5500+ lines)
├── app.js             # Core application logic (CountdownApp class with all functionality)
├── quotes.json        # Database of 500+ inspirational quotes
├── music-list.json    # Music list configuration file (auto-generated)
├── server.js          # Node.js HTTP server with video drag support
├── assets/
│   ├── audio/         # Sound effects (tick, heartbeat, completion - dual format mp3/ogg)
│   └── fonts/         # Optional custom fonts
├── music/
│   ├── 学习/           # Reward music for focus completion
│   └── 休息/           # Background music for rest mode
└── README.md          # Comprehensive project documentation
```

## 🏗️ Architecture Overview

### Core Components
- **CountdownApp class**: Main application controller managing all functionality
- **Modular design**: Separated concerns for time management, UI, audio, quotes, themes, and statistics
- **Event-driven architecture**: Decoupled components communicating through events
- **Centralized state management**: Persists settings via localStorage

### Key Modules
- **Time Management**: Handles countdown logic and Beijing time synchronization with multiple API fallbacks
- **UI Components**: Digital clock display with flip animation, multiple themes, and responsive design
- **Quote System**: Manages 500+ quotes with filtering, typing animation, and favorites
- **Audio System**: Handles sound effects and music with caching and search functionality
- **Theme System**: 18 themes (6 normal + 12 festival) with custom background image support
- **Statistics System**: Automatic session tracking with ECharts visualization
- **Custom Countdown System**: Manage multiple personalized countdown dates

### Development Notes
- Pure frontend app (HTML/CSS/JS) with no external dependencies
- Uses CSS variables for theming (`--accent-primary`, `--bg-primary`, etc.)
- Main entry point: `index.html` with logic in `app.js`
- Time calibration uses multiple APIs with fallback to local time
- Audio files need to be added to `assets/audio/` (MP3 + OGG formats for compatibility)
- Music files should be placed in `music/学习/` or `music/休息/` folders
- After adding music files, run `生成音乐列表.bat` to update the music list

## 💡 Common Tasks

### Adding New Quotes
Edit `quotes.json`:
```json
{
  "text": "New quote text",
  "author": "Author Name",
  "tags": ["time", "focus"]
}
```

### Adding Music
1. Place music files in `music/学习/` (for focus completion) or `music/休息/` (for rest mode)
2. Run `生成音乐列表.bat` to scan and generate the music list
3. In the app, click the 🔄 refresh button to update the music list

### Customizing Themes
Modify CSS variables in `styles.css`:
```css
[data-theme="dark"] {
  --bg-primary: #0a0a0a;
  --accent-primary: #00d4ff;
  --gradient-primary: linear-gradient(135deg, #00d4ff 0%, #ff6b35 100%);
}
```

Each theme supports custom background images through the UI (主题选择页面).

### Debugging
- Check console logs for API errors
- Use `localStorage.clear()` to reset settings
- Verify audio files exist in correct paths
- For video drag issues, ensure Node.js server is used instead of Python's http.server

### Working with Statistics
- Statistics are automatically saved in localStorage under `countdown_usage_stats`
- Data includes focus/rest sessions with timestamps and durations
- Export/import functionality supports JSON format for data migration

###回答语言
- 中文

