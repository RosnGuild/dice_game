// Creates a globally accessible 2D array that stores all move data.

#macro moveid_STRIKE 0
#macro moveid_BLOCK 1

#macro movedata_NAME 0
#macro movedata_HIT 1
#macro movedata_BLOCK 2

#macro BASE_BLOCK 5
#macro BASE_HIT 6

global.move_data = 
[	//Name		Hit			Blk
    ["Strike",	BASE_HIT,	0],
    ["Block",	0,			BASE_BLOCK],
    // ...and so on.
]