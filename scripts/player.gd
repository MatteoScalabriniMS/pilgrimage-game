extends CharacterBody2D

# ========================================
# PILGRIMAGE - Player Controller
# ========================================
# Gestisce il movimento del personaggio
# Input: WASD o Frecce direzionali
# Output: Movimento fluido con accelerazione/friction
# 
# Versione: 0.1.0
# Godot: 4.5.1

# === EXPORTED VARIABLES ===
# Questi possono essere modificati in Inspector
@export var speed: float = 200.0           # Velocità massima (pixels/sec)
@export var acceleration: float = 1000.0   # Accelerazione (pixels/sec²)
@export var friction: float = 800.0        # Decelerazione (pixels/sec²)

# ========================================
# PROCESS LOOP - Eseguito ogni frame
# ========================================
func _process(delta: float) -> void:
	# Leggi input da tastiera (WASD o Frecce)
	var input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Se c'è input, accelera verso quella direzione
	if input_vector != Vector2.ZERO:
		# move_toward: transizione fluida verso velocità target
		velocity = velocity.move_toward(input_vector * speed, acceleration * delta)
	else:
		# Niente input: decelerazione fluida verso fermo
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
	
	# Applica movimento alla posizione
	position += velocity * delta

# ========================================
# INPUT DETECTION - Quando l'utente preme tasti
# ========================================
func _input(event: InputEvent) -> void:
	# Controlla se è una pressione di tasto
	if event is InputEventKey and event.pressed:
		# SPAZIO: test debug
		if event.keycode == KEY_SPACE:
			print("SPACE - Player position: ", position)
		
		# ESCAPE: esci dal gioco (utile per testing)
		if event.keycode == KEY_ESCAPE:
			get_tree().quit()

# ========================================
# UTILITY FUNCTIONS
# ========================================

## Restituisce la direzione di movimento normalizzata
func get_direction() -> Vector2:
	if velocity == Vector2.ZERO:
		return Vector2.ZERO
	return velocity.normalized()

## Ferma istantaneamente il movimento
func stop() -> void:
	velocity = Vector2.ZERO
