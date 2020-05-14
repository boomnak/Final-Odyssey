depth = -2;

scale_by = (display_get_gui_width()/obj_msgBOX.scale_factor) / sprite_get_width(spr_leaveBTN);

image_xscale = scale_by;
image_yscale = scale_by;

y = ((obj_msgBOX.y + sprite_get_height(spr_msgBOX) * scale_by) - y);
