/// @description UI


// You can write your code in this editor
draw_set_color(c_red);
//draw_text(view_xport +10,view_yport-10,health);
draw_text(10,10,health);
draw_set_color(c_blue);
draw_text(10,25,hsp);

draw_set_color(c_orange);
draw_text(10,40,image_xscale);

draw_set_color(c_purple)

if(grounded)
{
draw_text(10,55,"true");
}
else
{
draw_text(10,55,"false");
}