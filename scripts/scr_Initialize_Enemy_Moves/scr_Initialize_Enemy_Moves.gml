// Creates a globally accessible 3D array that stores all enemy move data. 
// Access a move and it's components with global.enemy_move_data[enemyid_NAME][DICEROLL][movedata_NAME/HIT/BLOCK].


// Move definitions
#macro enemyid_IMP 0
#macro enemyid_ZOMBIE 1

// Use these to index into a move entry to get its components.`
#macro enemymove_HIT 0
#macro enemymove_BLOCK 1
#macro enemymove_REROLL 2
#macro enemymove_BOLSTER_SAME 3
#macro enemymove_BOLSTER_ALL 4
#macro enemymove_BURN 5
#macro enemymove_POISON 6
#macro enemymove_DESCRIPTION 7

global.enemy_move_data =
[	
	[// Imp
		//Hit	Blk	Reroll	Bolster(Same/All)	Burn	Poison	Description
	    [2,		0,		false,	false,	false,		0,		0,		"Hit 2"],						// Imp 1
	    [0,		0,		true,	false,	false,		0,		0,		"Hit 3 + Reroll"],				// Imp 2
		[0,		0,		false,	true,	false,		0,		0,		"All imps are [Bolstered!]"],	// Imp 3
		[0,		0,		false,	false,	false,		1,		0,		"Inflicts [Burned 1]"],		// Imp 4
	],
	[//Zombie --- UNFINISHED
		//Hit	Blk	Reroll	Description
	    [2,		0,		false,	"Hit 2"],						// Imp 1
	    [0,		0,		true,	"Hit 3 + Reroll"],				// Imp 2
		[0,		0,		false,	"All imps are [Bolstered!]"],	// Imp 3
		[0,		0,		false,	"Inflicts [Burned 1]"],		// Imp 4
    ]
]