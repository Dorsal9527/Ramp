

var _r = c_red;
var _g = c_green;
var _b = c_blue;

_city = instance_nearest(x,y,obj_city);

var _dx = x - _city.x;
var _dy = y - _city.y;


var _left = _dx;
var _top = _dy;
var _height = sprite_get_height(CITY_MEGA);
var _width = sprite_get_width(spr_monke);


var _edge = x + sprite_get_width(sprite_index);
var _city_edge = _city.x + sprite_get_width(CITY_MEGA);

draw_sprite_part(CITY_MEGA,0,  _left , 0, _width, _height, x, 0);

if ( _edge >= _city_edge )
{
	_g = c_purple;
	
	
	var _edx = _edge - _city_edge;
    draw_sprite_part(CITY_MEGA,0,  0 , 0, _width + _edx, _height, _city_edge, 0);
}


if ( x >= _city_edge )
{
	x = _city.x;
}


draw_self();
draw_self();

draw_circle_color(_edge,y,5,_g,_g, false);
draw_circle_color(_city_edge, y, 5, _r,_r, false);

draw_text(10,10, "W: " + string(_width) + " H: " + string(_height) );
draw_text(10,30, "L: " + string(_left) + " T: " + string(_top) );