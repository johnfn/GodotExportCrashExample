extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
  var result = MeshInstance.new()
  var st = SurfaceTool.new()
  
  st.begin(Mesh.PRIMITIVE_TRIANGLES)
  st.add_color(Color.red)
  st.add_uv(Vector2(0, 0))
  st.add_vertex(Vector3(-10, -10, -50.0))
  st.add_uv(Vector2(0.5, 1))
  st.add_vertex(Vector3(0.0, 10.0, -50.0))
  st.add_uv(Vector2(1, 0))
  st.add_vertex(Vector3(10.0, -10.0, -50.0))
  st.generate_normals()
  st.index()
  
  result.mesh = st.commit()
  add_child(result)
  print(result)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#  pass
