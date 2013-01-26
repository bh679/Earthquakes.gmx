//general house
if image_xscale = 1 and image_yscale = 1
    return spr_house
    
/*/thin
if image_xscale = 1 
{
    //middle
    if yy < image_yscale and yy > 0
        return spr_building_thin_middle
        
    //thin bottom
    else if yy = 0
        return spr_building_thin_bottom
    else
    return spr_error
}
*//*flat
else if image_yscale = 1
{
    
    //middle
    if xx < image_xscale - 1 and xx > 0
        return spr_building_flat_middle
        
    //thin left
    else if xx = 0
        return spr_building_flat_left
    //thin rightw
    else if xx = image_xscale - 1
        return spr_building_flat_left
    else
        return spr_error
}
*/

//left/right
if xx = abs(floor(image_xscale)) - 1 or xx = 0
{
    //right is sprite default
    //corner / top
    if yy = image_yscale - 1
        return spr_building_corner
    //side
    return spr_building_side
}

//top
if yy = image_yscale - 1
    return spr_building_top
    
//bottom
if yy = 0 and xIsInDoor()
    return spr_building_door
    
//middle
return spr_building_middle
