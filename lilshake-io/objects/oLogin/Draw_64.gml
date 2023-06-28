/// @description Insert description here
// You can write your code in this editor
var bw = browser_width
var bh = browser_height
var scale = bw/1300


draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_font(fGame)
draw_text_transformed(bw*0.5 , bh*0.4 , "lilshake.io",  scale,scale,0)

draw_text_transformed(bw*0.5 , bh*0.5 , "Enter your name",  0.5*scale,0.5*scale,0)
