# 🎮 Pilgrimage - Setup Guide for macOS (Godot 4.5.1)

**Versione:** 0.1.0  
**Engine:** Godot 4.5.1 (arm64 Apple Silicon)  
**macOS:** Tahoe 26.1+  
**Tempo stimato:** ~20 minuti

---

## ✅ PRE-REQUISITI

Hai già fatto questi step? ✓
- [ ] Scaricato Godot 4.5.1 arm64 in `~/Applications`
- [ ] Scaricato Krita in `~/Applications`
- [ ] Creata la cartella `~/Documents/PERSONAL_PROJECTS/GODOT/Pilgrimage`
- [ ] Git installato (`git --version` funziona)

---

## 🚀 STEP 1: Clona il progetto

Apri Terminale e esegui:

```bash
cd ~/Documents/PERSONAL_PROJECTS/GODOT/Pilgrimage
git clone https://github.com/MatteoScalabriniMS/pilgrimage-game.git .
```

Se non hai ancora il repo su GitHub, per ora copia i file localmente:

```bash
# Temporaneo - sostituiremo con clone quando repo è online
mkdir -p ~/Documents/PERSONAL_PROJECTS/GODOT/Pilgrimage/pilgrimage-game
cd ~/Documents/PERSONAL_PROJECTS/GODOT/Pilgrimage/pilgrimage-game
```

---

## 🎯 STEP 2: Apri il progetto in Godot

1. Doppio-click su **Godot.app** in `~/Applications`
2. Clicca su **"Open Project"**
3. Naviga a `~/Documents/PERSONAL_PROJECTS/GODOT/Pilgrimage/pilgrimage-game`
4. Clicca **"Select Current Folder"**
5. Godot carica il progetto (primo avvio: ~15 secondi)

**Schermata attesa:** Editor vuoto con griglia grigia, pannello "Scene" vuoto a sinistra.

---

## 📁 STRUTTURA PROGETTO

```
pilgrimage-game/
├── project.godot          # Configurazione Godot 4.5.1
├── scenes/                # Scene (.tscn) - la struttura del gioco
│   └── main.tscn         # Scene principale (creeremo adesso)
├── scripts/               # Script GDScript (.gd)
│   ├── player.gd         # Controller del personaggio
│   └── camera_follow.gd  # Sistema camera
├── assets/
│   ├── sprites/          # Immagini personaggio (PNG)
│   ├── environments/      # Background e tile (PNG)
│   ├── audio/            # Suoni e musica
│   └── ui/               # Interfaccia utente
└── SETUP_GUIDE.md        # Questo file
```

---

## 🎬 STEP 3: Crea la scena principale

Dentro Godot:

1. **File Menu** → **New Scene**
2. Root node: Crea un **Node2D** (Scene → Node2D)
3. Rinomina in "Main" (click destro → Rename)
4. **File** → **Save Scene As...**
5. Naviga in `scenes/` e salva come `main.tscn`

**Risultato:** Pannello Scene mostra "Main" con icona 2D.

---

## 👤 STEP 4: Crea il Player Node

Sotto il node "Main", aggiungi:

1. Click destro su "Main" → **Add Child Node**
2. Cerca **CharacterBody2D** (questo è il node per il personaggio con fisica)
3. Rinomina in "Player"
4. **Aggiungi child node a Player:**
   - **Sprite2D** → rinomina in "Sprite"
   - **CollisionShape2D** → rinomina in "Collision"

**Struttura final:**
```
Main (Node2D)
└── Player (CharacterBody2D)
    ├── Sprite (Sprite2D)
    └── Collision (CollisionShape2D)
```

---

## 🎨 STEP 5: Crea un placeholder visivo

**Per il Sprite:**
1. Seleziona il node "Sprite" (dentro Player)
2. Nel pannello Inspector (destra), trova **Texture**
3. Clicca su **[empty]** → **New Image Texture**
4. Una finestra si apre: clicca su **"New Image"**
5. Size: `32` x `32` pixels
6. Colore: rosso (RGB: 255, 0, 0)
7. Clicca **Create** → salva come `assets/sprites/player_placeholder.png`

**Per il Collision:**
1. Seleziona "Collision" node
2. Inspector → **Shape**
3. Clicca **[empty]** → **New RectangleShape2D**
4. Nel viewport (al centro), vedrai un rettangolo rosso intorno allo sprite

---

## ⌨️ STEP 6: Aggiungi il primo script (Player Movement)

1. Click destro su "Player" → **Attach Script**
2. Path: `res://scripts/player.gd`
3. Clicca **Create**

**Copia questo codice inside:**

```gdscript
extends CharacterBody2D

# Movimento
@export var speed = 200.0
@export var acceleration = 1000.0
@export var friction = 800.0

func _process(delta: float) -> void:
	var input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * speed, acceleration * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
	
	position += velocity * delta

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			print("Space premuto!")
```

**Salva** (Ctrl+S).

---

## 🎮 STEP 7: Test movimento

1. Clicca il pulsante **Play** (triangolo verde) in alto a destra
2. Usa **WASD** o **Frecce** per muovere il quadrato rosso
3. Premi **SPAZIO** - nel Terminale vedrai "Space premuto!"
4. Premi **ESC** per fermare il gioco

**Se non funziona:**
- Controlla che "Player" sia selezionato quando allega lo script
- Verifica che il codice non abbia errori di sintassi (check nella tab "Output" in basso)

---

## 📸 STEP 8: Aggiungi una Camera

1. Sotto "Player", aggiungi un child node **Camera2D**
2. Inspector → **Current**: attiva il toggle (diventa blu)

**Adesso la camera segue il player!**

---

## 💾 Commit iniziale

Nel Terminale:
```bash
cd ~/Documents/PERSONAL_PROJECTS/GODOT/Pilgrimage/pilgrimage-game
git add .
git commit -m "Initial Godot 4.5.1 setup - Player controller base"
git remote add origin https://github.com/MatteoScalabriniMS/pilgrimage-game.git
git push -u origin main
```

---

## ⚠️ TROUBLESHOOTING

### Godot non si apre
- Controlla che sia **arm64** (non x86_64 Intel)
- Terminale: `file ~/Applications/Godot.app/Contents/MacOS/Godot`
- Output deve contenere: `Mach-O 64-bit executable arm64`

### Script non si salva
- Vai in **Project → Project Settings → File System** 
- Controlla che `res://` punti alla cartella giusta

### Player non si muove
- Controlla che Input Map abbia `ui_left`, `ui_right`, `ui_up`, `ui_down`
- Menu: **Project → Project Settings → Input Map**

---

## 📚 Prossimi passi

**Domani continueremo con:**
1. ✅ Placeholder art in Krita
2. ✅ Sistema parallax per background
3. ✅ Primo ambiente (Desert of Echoes)
4. ✅ Particelle atmosferiche

---

**Fatto il setup? Rispondi qui quando vedi il quadrato rosso muoversi!** 🎮
