var velocidade = 3;

if (keyboard_check(ord("W"))) {
    y -= velocidade;
    image_index = 0 + (current_time div 150) mod 3;
}

if (keyboard_check(ord("A"))) {
    x -= velocidade;
    image_index = 3 + (current_time div 150) mod 3;
}

if (keyboard_check(ord("D"))) {
    x += velocidade;
    image_index = 6 + (current_time div 150) mod 3;
}

if (keyboard_check(ord("S"))) {
    y += velocidade;
    image_index = 9 + (current_time div 150) mod 3;
}

x = clamp(x, 32, room_width - 32);
y = clamp(y, 32, room_height - 32);