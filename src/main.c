#include <genesis.h>

int main(u16 hard)
{
    char output_str [40];
    unsigned short count = 0;

    while(TRUE)
    {
        // read input
        // move sprite
        // update score
        // draw current screen (logo, start screen, settings, game, gameover, credits...)
	sprintf(output_str, "Hello World! Count: %i.", count);
	VDP_drawText(output_str, 10, 13);
	count++;

        // wait for screen refresh and do all SGDK VBlank tasks
        SYS_doVBlankProcess();
    }

    return 0;
}
