extends Node2D

@onready var tilemap = $TileMap
const MAP_SIZE = Vector2(128,128)
const LAND_CAP = 0.3

func _ready():
	generate_map()
			
			
func generate_map():
	var noise = FastNoiseLite.new()
	noise.seed = randi_range(100,500)
	var cells = []
	for x in MAP_SIZE.x:
		for y in MAP_SIZE.y:
			var value = noise.get_noise_2d(x,y)
			if value < LAND_CAP:
				cells.append(Vector2(x,y))
			else:
				tilemap.set_cell(0,Vector2(x,y),0,Vector2(3,1),0)
	tilemap.set_cells_terrain_connect(0,cells,0,0)
