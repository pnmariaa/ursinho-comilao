var velocidade = 8;

if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {
    y -= velocidade;
    image_index = 0 + (current_time div 150) mod 3;
}

if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {
    x -= velocidade;
    image_index = 3 + (current_time div 150) mod 3;
}

if (keyboard_check(ord("D")) || keyboard_check(vk_right)) {
    x += velocidade;
    image_index = 6 + (current_time div 150) mod 3;
}

if (keyboard_check(ord("S")) || keyboard_check(vk_down)) {
    y += velocidade;
    image_index = 9 + (current_time div 150) mod 3;
}

x = clamp(x, 32, room_width - 32);
y = clamp(y, 32, room_height - 32);