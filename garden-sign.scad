// Customizable Garden Plant Label Stake
// by Mark Thompson
// updated by Lloyd Albin
// to have settable in ground stake depth
// and stake length is now min stake length

text_string = "Plant";
text_size = 12;
text_thickness = 3;
text_font = "Nimbus Sans L:Bold";
text_y_offset_adjust = 0;

stake_in_ground_depth = 50;
stake_min_length = 150;
stake_thickness = 5;
stake_height = 5;

point_length = 10;
tip_size = 0.5;

tm = textmetrics(text=text_string, size=text_size, valign="top", halign="left", font=text_font, direction="ltr");

stake_length = tm["advance"][0] + stake_in_ground_depth;

module print_text()
{
    translate([0,text_y_offset_adjust,0])
        linear_extrude(height=text_thickness, convexity=4)
            text(text_string,size=text_size,font=text_font);
}

module print_stake()
{
    total_stake_length = stake_length < stake_min_length ? stake_min_length : stake_length;
    translate([total_stake_length/2,-stake_height/2,stake_thickness/2]) {
        difference() {
            hull() {
                cube([total_stake_length,stake_height,stake_thickness],true);
                translate([total_stake_length/2+point_length,stake_height/2-tip_size/2,-stake_thickness/2+tip_size/2])
                    cube([tip_size,tip_size,tip_size],true);
            }
            
            translate([0,-stake_height/2,stake_thickness/2])
                cube([total_stake_length+point_length*2+0.1,stake_height,stake_thickness],true);
        }
    }
}

//module text()
{
    print_text();
    print_stake();
}

//text();
