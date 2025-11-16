# 🏜️ Pilgrimage

**A Journey-like atmospheric exploration game made with Godot 4.5.1**

> A meditative pilgrimage through symbolic worlds, each with unique visual atmosphere and environmental storytelling.

---

## 📋 Project Information

- **Engine:** Godot 4.5.1 (arm64 Apple Silicon optimized)
- **Platform:** macOS (Tahoe 26.1+), cross-platform export ready
- **Language:** GDScript (Python-like syntax)
- **Status:** Pre-production / Learning Project
- **Developer:** Matteo Scalabrini
- **Start Date:** November 2025

---

## 🎮 Gameplay Concept

**Pilgrimage** is a short (~20-30 min) exploration game inspired by **Journey**, **Gris**, and **Wanderer**.

### World Structure
The player travels through 4 interconnected environments:

1. **Desert of Echoes** - Golden sands, melancholic atmosphere
2. **Crystal Caverns** - Icy blues, geometric beauty
3. **Forest of Whispers** - Bioluminescent green, mystery
4. **The Summit** - Contemplative conclusion, narrative resolution

### Design Pillars
- ✨ **Atmosphere over mechanics** - Focus on mood, not combat
- 🎨 **Unique visual identity** - Hand-drawn art style (learning objective)
- 🔄 **Environmental storytelling** - No dialogue, pure visual narrative
- 🎵 **Immersive audio** - Ambient soundscapes, meaningful music
- 🧘 **Meditative pacing** - Time to explore, contemplate, breathe

---

## 📁 Project Structure

```
pilgrimage-game/
├── project.godot              # Godot 4.5.1 configuration
├── scenes/
│   └── main.tscn             # Main game scene
├── scripts/
│   ├── player.gd             # Player movement controller
│   ├── camera_follow.gd      # Camera system
│   └── ...
├── assets/
│   ├── sprites/              # Character art (PNG)
│   ├── environments/          # Background & world art (PNG)
│   ├── audio/                # Music & SFX (OGG/WAV)
│   └── ui/                   # UI elements
├── SETUP_GUIDE.md            # Detailed setup instructions
└── README.md                 # This file
```

---

## 🚀 Getting Started

### Prerequisites
- **macOS Tahoe 26.1+** with Apple Silicon (M-series)
- **Godot 4.5.1** arm64 build
- **Krita** (for art development) - free & open-source
- **Git** (version control)

### Quick Start
```bash
# Clone the repository
git clone https://github.com/MatteoScalabriniMS/pilgrimage-game.git
cd pilgrimage-game

# Open in Godot
# 1. Launch Godot 4.5.1
# 2. Click "Open Project"
# 3. Select this folder
# 4. Wait for initial import (~15 seconds)

# Play test
# Click the Play button (green triangle) - top right
```

**Full setup guide:** See `SETUP_GUIDE.md` for detailed step-by-step instructions.

---

## 🛠️ Development Roadmap

### Phase 1: Foundation (Weeks 1-4)
- [x] Godot 4.5.1 setup & project structure
- [x] Player controller with smooth movement
- [x] Basic camera following
- [ ] Input system refinement
- [ ] Placeholder environment

### Phase 2: First World (Weeks 5-8)
- [ ] "Desert of Echoes" environment art (Krita)
- [ ] Parallax scrolling implementation
- [ ] Particle effects (sand, wind)
- [ ] Audio system integration
- [ ] Interactive elements (simple triggers)

### Phase 3: World Expansion (Weeks 9-12)
- [ ] Additional environments (Crystal Caverns, Forest)
- [ ] Smooth transitions between zones
- [ ] Enhanced visual effects
- [ ] Ambient music & soundscape

### Phase 4: Polish & Release (Weeks 13+)
- [ ] UI/UX refinement
- [ ] Performance optimization
- [ ] Bug fixes & playtesting
- [ ] Export to Steam/itch.io

---

## 🎨 Art Development

### Tools
- **Krita 5.x** - Primary digital painting tool (free, open-source)
- **Godot Shaders** - Real-time visual effects
- **Aseprite** (optional) - Sprite animation

### Art Style
- Hand-drawn digital painting
- Soft, atmospheric color palettes
- Minimal UI design
- Stylized rather than realistic

**Learning approach:** Start with environment concepts, iterate in Godot with placeholders, refine art as engine skills solidify.

---

## 🎵 Audio Design

### Audio System
- Ambient soundscapes per environment
- Dynamic music transitions
- Environmental SFX (wind, water, creatures)
- Player movement audio feedback

### Asset Sources
- **itch.io** - Royalty-free sound libraries
- **Freesound.org** - Open-source audio
- Original recordings (future)

---

## 💻 Technical Stack

| Component | Tool | Version |
|-----------|------|---------|
| Engine | Godot | 4.5.1 |
| Scripting | GDScript | 2.0 |
| Version Control | Git/GitHub | - |
| Art | Krita | 5.x |
| Platform Target | macOS, Web, Linux | arm64 optimized |

---

## 📚 Learning Resources

### GDScript
- [Official Godot Docs](https://docs.godotengine.org/)
- [GDScript Guide](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/)

### Game Design
- [Game Design Patterns](https://gameprogrammingpatterns.com/)
- [Atmospheric Game Design](https://www.gamedeveloper.com/)

### Digital Art
- [Krita Manual](https://docs.krita.org/)
- [Concept Art Process](https://www.ctrlpaint.com/)

---

## 🤝 Contributing

This is a personal learning project, but feedback is welcome:
- **Issues:** Report bugs or suggest features
- **Discussions:** Share ideas or techniques
- **Pull Requests:** Contributions appreciated (coordinate first!)

---

## 📜 License

This project is **MIT Licensed** - feel free to fork, modify, and learn from it.

Art and audio assets may have different licenses - always check before reusing.

---

## 🙏 Acknowledgments

- **Inspired by:** Journey, Gris, Wanderer, Inside, Firewatch
- **Tools:** Godot Foundation, Krita Team
- **Community:** Godot forums, itch.io developers

---

## 📞 Contact

- **Developer:** Matteo Scalabrini
- **GitHub:** [@MatteoScalabriniMS](https://github.com/MatteoScalabriniMS)
- **Location:** Milan, Lombardy, Italy

---

**Last Updated:** November 16, 2025

> "The journey is more important than the destination." - Unknown

🎮 Happy developing! 🎮
