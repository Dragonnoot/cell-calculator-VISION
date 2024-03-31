extends Area2D;

var viewportPos;
var scaleChange;

#func updateDisplaySize():
	#viewportPos = OS.get_window_safe_area().size;
	#viewportPos.x += 35;
	#viewportPos.y -= 35;
	#scaleChange = Vector2(viewportPos.x / $"ui-backingMule".position.x, viewportPos.y / $"ui-backingMule".position.y);
#
	##$"ui-backingMule".set_region_rect(Rect2(Vector2(0, 0), viewportPos));
	#$"ui-backingMule".scale.x = scaleChange[0] * $"ui-backingMule".scale.x;
	#$"ui-backingMule".scale.y = scaleChange[1] * $"ui-backingMule".scale.y;
	#$"ui-backingMule".set_flip_v(true);
	#   KILL ME
#
#func unadjust(vec):
	#return Vector2(vec.x - 35, vec.y + 35);

func _ready():
	#updateDisplaySize();
	pass;

func _process(delta):
	#if(get_viewport_rect() != unadjust(viewportPos)):
		#updateDisplaySize();
		pass;
