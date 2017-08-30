/// @description add letters over time
// You can write your code in this editor
if(time < text_length)
{
time += spd;
print = string_copy(text,0,time);
}

//render textbox and text
draw_set_alpha(alpha);


if(alpha <1) 
{
	alpha +=spd/10; 
}
else alpha =1;

draw_set_font(font)
draw_set_color(c_gray);
draw_rectangle(x,y,x+box_width,y+box_height,0);
draw_set_color(c_black)
draw_rectangle(x,y,x+box_width,y+box_height,1);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext
(
	x + padding,
	y + padding,
	print,
	font_size + (font_size /2),
	maxLength

);
draw_set_alpha(1);