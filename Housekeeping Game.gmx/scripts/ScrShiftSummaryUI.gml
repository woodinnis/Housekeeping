#define ScrShiftSummaryUI
/* 
*   Display a message at the end of every shift
*
*   Provide a summary of items cleaned and cash earned
*/

var count = 0;
var cash = 0;
var showSummary = false;

if(!shiftStart)
{
    count = cleanCount;
    cash = count * WAGE;
    showSummary = true;
}

if(showSummary)
{
    alignUI();
    drawRect();
    draw_set_valign(fa_bottom);
    draw_text(centerX, centerY, SHIFTSUMMARY01 + string(count) + "#" + SHIFTSUMMARY02 + string(cash));
    
    if(shiftButton(centerX,centerY + 40))
    {
        shiftStart = true;
        cleanCount = 0;
        showSummary = false;
        totalCash += cash;
    }
}

#define shiftButton
///buttons(X,Y)
/*
*   Draw the OK button, and progress through the messages
*/

talkX = argument0;
replyY = argument1;

// Set alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

// Draw button
btnYes = drawButton(talkX, replyY + (TXTDRAWBUFFER*2), BTN003);

if(btnYes)
    return(1);
