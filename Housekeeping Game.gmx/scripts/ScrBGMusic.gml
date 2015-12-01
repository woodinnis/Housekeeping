/*
*   Check if the background music is playing.
*
*   Fade the BG Music in over three seconds if it is not.
*/

if(!audio_is_playing(SndGameMusic))
{
    var bgSound = audio_play_sound(SndGameMusic, 1, true);
    audio_sound_gain(bgSound,0,0);
    audio_sound_gain(bgSound,1,3000)
}
