var cluesFile = file_text_open_read("clues.json");
var theData = "";
while (!file_text_eof(cluesFile))
{
    theData += file_text_read_string(cluesFile);
    file_text_readln(cluesFile);
}
file_text_close(cluesFile);

// Declare ds_map global variables
globalvar totalClues;
globalvar clueData;

var cluesMap = json_decode(theData);
var theClues = ds_map_find_value(cluesMap, "CRIME");
totalClues = ds_list_size(theClues);
clueData = ds_grid_create(totalClues,5);

for(i = 0; i < totalClues; i++)
{
    var theEntry = ds_list_find_value(theClues, i);
    clueData[# i, CRIME] = theEntry[? "CRIME"];
    clueData[# i, EVIDENCE] = theEntry[? "EVIDENCE"];
    clueData[# i, CLUE01] = theEntry[? "CLUE01"];
    clueData[# i, CLUE02] = theEntry[? "CLUE02"];
    clueData[# i, CLUE03] = theEntry[? "CLUE03"];
}
