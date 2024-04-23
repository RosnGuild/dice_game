/// @description Iterates through state machine.

switch (state) {
	case STATES.SETUP:
		// Resets all face cooldowns.
		for (var _i = 0; _i < 20; _i++) {
			reset_cooldown(global.die_graph_array[_i]);
		}
		state = STATES.PLAYER_MOVE_CHOICE;
		break;
    case STATES.PLAYER_MOVE_CHOICE:
		// in this state, cards can be selected.
		// if card requires targets, goes to PLAYER_SELECTS.
		// else, if action points remaining, decrease action points by 1 and continue at this state
		// else, go to BLOCKS_RESOLVE.
        break;
	case STATES.PLAYER_ENEMY_SELECT:
		// in this state, enemies can be selected
        break;
    default:
        state = STATES.PLAYER_MOVE_CHOICE;
        break;
}