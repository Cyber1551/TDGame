/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_text(10, 10, "Coins: " + string(global.coins));
draw_text(10, 30, "Level: " + string(global.level));
var pHp = (global.playerHp / global.playerMaxHp) * 100;
draw_healthbar(10, 50, 100, 70, pHp, c_black, c_red, c_green, 0, true, true);
draw_set_color(c_white);