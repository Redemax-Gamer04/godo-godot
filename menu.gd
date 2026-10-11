extends Node2D

@onready var btn_gioca: TextureButton = $Gioca
@onready var btn_opzioni: TextureButton = $Optioni
@onready var btn_esci: TextureButton = $Esci

func _ready() -> void:
	btn_gioca.pressed.connect(_on_gioca_pressed)
	btn_opzioni.pressed.connect(_on_opzioni_pressed)
	btn_esci.pressed.connect(_on_esci_pressed)

func _on_gioca_pressed() -> void:
	print("Avvio del gioco...")
	var err = get_tree().change_scene_to_file("res://scena_2.tscn")
	if err != OK:
		print("Errore nel caricamento della scena di gioco: ", err)

func _on_opzioni_pressed() -> void:
	print("Apertura pannello opzioni...")

func _on_esci_pressed() -> void:
	print("Chiusura del gioco...")
	get_tree().quit()
