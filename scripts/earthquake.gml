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
        obj_health -= (obj_control.earthquakeSize - minDistanceToEarthquake)/(maxDistanceToEarthquake-minDistanceToEarthquake)*100
    else if (obj_control.earthquakeX > x and obj_control.earthquakeX < x+buildingWidth)
        //damage from inside
        obj_health -= (obj_control.earthquakeSize*2)/buildingWidth*100
}
obj_control.EARTHQUAKEMAX += 50
