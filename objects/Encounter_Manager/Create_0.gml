/// @description Creates state machine.
// You can write your code in this editor

enum STATES {
	SETUP,
	ENEMIES_CHOOSE,
	PLAYER_CHOOSES,
	PLAYER_SELECTS,
	BLOCKS_RESOLVE,
	HEALS_RESOLVE,
	PLAYER_STATUSES_RESOLVE,
	PLAYER_ACTIONS_RESOLVE,
	ENEMY_STATUES_RESOLVE,
	ENEMY_ACTIONS_RESOLVE,
	END_ROUND,
	END_ENCOUNTER
};

state = STATES.SETUP;