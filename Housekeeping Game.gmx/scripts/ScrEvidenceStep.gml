// If a clue is present, find the distance to the farthest clue
if(object_exists(ObjClueParent))
{
    farClue = instance_furthest(x,y,ObjClueParent);
    radius = distance_to_object(farClue);
}