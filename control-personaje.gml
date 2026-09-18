// Movimiento Eje X
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	velocidad_horizontal = 4;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	velocidad_horizontal = -4;
}
if (place_meeting(x + velocidad_horizontal, y, obj_suelo)) {
	while (!place_meeting(x + sign(velocidad_horizontal), y, obj_suelo)) {
		x = x + sign(velocidad_horizontal);
	}
	velocidad_horizontal = 0;
}
x = x + velocidad_horizontal;
// Movimiento Eje Y
velocidad_vertical = velocidad_vertical + gravedad;
if ((keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)) && place_meeting(x, y + 1, obj_suelo)) {
	velocidad_vertical = fuerza_salto;
}
if (place_meeting(x, y + velocidad_vertical, obj_suelo)) {
	while (!place_meeting(x, y + sign(velocidad_vertical), obj_suelo)) {
		y = y + sign(velocidad_vertical);
	}
	velocidad_vertical = 0;
}
y = y + velocidad_vertical;
