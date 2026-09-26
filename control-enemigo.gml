if (!place_meeting(x + (direccion * 16), y + 1, obj_suelo)) {
	direccion = -direccion;
	velocidad_horizontal = 0;
}
velocidad_horizontal = direccion * velocidad;
if (velocidad_horizontal != 0) {
	image_xscale = sign(velocidad_horizontal)
}
if (place_meeting(x + velocidad_horizontal, y, obj_suelo)) {
	direccion = -direccion;
	velocidad_horizontal = 0;
}
x += velocidad_horizontal;
if (vida <= 0) {
	instance_destroy();
}
velocidad_vertical += gravedad
if (place_meeting(x, y + velocidad_vertical, obj_suelo)) {
	velocidad_vertical = 0;
}
y += velocidad_vertical;
// Atacar al jugador
ver_prota = instance_place(x, y, obj_prota);
if (ver_prota != noone) {
	if (atacar) {
		sprite_index = spr_enemigo;
		image_index = 0;
		ver_prota.vida -= 0.8;
		ver_prota.recibir_dano = false;
		atacar = false;
	} else {
	atacar = true;
	}
}
