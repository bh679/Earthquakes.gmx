with(obj_building)
{
    //check from both sides of building
    minDistanceToEarthquake = min(point_distance(x,0,obj_control.earthquakeX,0),point_distance(x+image_xscale*TILESIZE,0,obj_control.earthquakeX,0))
    maxDistanceToEarthquake = max(point_distance(x,0,obj_control.earthquakeX,0),point_distance(x+image_xscale*TILESIZE,0,obj_control.earthquakeX,0))
    buildingWidth = image_xscale*TILESIZE
    if maxDistanceToEarthquake < obj_control.earthquakeSize
        instance_destroy()
    else if minDistanceToEarthquake < obj_control.earthquakeSize
        //damage
        //image_blend = merge_color(image_blend,c_red,minDistanceToEarthquake/maxDistanceToEarthquake)
        obj_health -= (obj_control.earthquakeSize - minDistanceToEarthquake)/(maxDistanceToEarthquake-minDistanceToEarthquake)*100
    obj_control.EARTHQUAKEMAX += 50
}
