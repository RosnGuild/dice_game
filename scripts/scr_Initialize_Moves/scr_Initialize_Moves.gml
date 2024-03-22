// Creates a globally accessible 2D array that stores all move data. 
// Access a move and it's components with global.move_data[moveid_NAME][movedata_NAME/HIT/BLOCK].


// Move definitions
#macro moveid_STRIKE 0
#macro moveid_BLOCK 1

// Use these to index into a move entry to get its components.`
#macro movedata_NAME 0
#macro movedata_HIT 1
#macro movedata_BLOCK 2


// Tag definitions. 
#macro BASE_BLOCK 5
#macro BASE_HIT 6

#macro UNCOMMON_BLOCK 2 * BASE_BLOCK
#macro UNCOMMON_STRIKE 2 * BASE_HIT

#macro RARE_BLOCK 3 * BASE_BLOCK
#macro RARE_STRIKE 3 * BASE_HIT

global.move_data = 
[	//Name		Hit			Blk
    ["Strike",	BASE_HIT,	0],
    ["Block",	0,			BASE_BLOCK],
    // ...and so on.
]