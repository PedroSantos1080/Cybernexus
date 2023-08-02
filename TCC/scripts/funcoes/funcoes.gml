// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_text_colour_outline(){
    //Created by Andrew McCluskey http://nalgames.com/
 
    ///@arg x
    ///@arg y
    ///@arg str
    ///@arg outwidth
    ///@arg outcol
    ///@arg outfidelity
    ///@arg separation
    ///@arg width
 
 
    //2,c_dkgray,4,20,500 <Personal favorite preset. (For fnt_3)
    var dto_dcol = draw_get_color();
 
    draw_set_color(argument4);
 
    for(var dto_i=45; dto_i<405; dto_i+=360/argument5)
    {
      //draw_text_ext(argument0+lengthdir_x(argument3,dto_i),argument1+lengthdir_y(argument3,dto_i),argument2,argument6,argument7);
      draw_text_ext(argument0+round(lengthdir_x(argument3,dto_i)),argument1+round(lengthdir_y(argument3,dto_i)),argument2,argument6,argument7);
    }
 
    draw_set_color(dto_dcol);
 
    draw_text_ext(argument0,argument1,argument2,argument6,argument7);
}