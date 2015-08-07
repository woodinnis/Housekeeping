// If both a piece of evidence and clues are present, draw a circle around them
if(instance_exists(ObjClueParent))
{
    if(instance_exists(ObjEvidenceParent))
    {
        evidence = ObjEvidenceParent;
        draw_set_colour(c_lime);
        draw_set_alpha(0.6);
        draw_circle(evidence.x,evidence.y,evidence.radius + RADIUSADJUST,false);
    }
}
