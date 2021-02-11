



_city = instance_nearest(x,y,obj_city);

var _dx = x - _city.x;
var _dy = y - _city.y;


var _left = _dx;
var _top = _dy;
var _height = sprite_get_height(CITY_MEGA);
var _width = sprite_get_width(spr_monke);



draw_sprite_part(CITY_MEGA,0,  _left , 0, _width, _height, x, 0)


draw_self();


draw_text(10,10, "W: " + string(_width) + " H: " + string(_height) );
draw_text(10,30, "L: " + string(_left) + " T: " + string(_top) );