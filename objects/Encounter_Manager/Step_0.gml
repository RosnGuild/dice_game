/// @description Iterates through state machine.
// You can write your code in this editor

switch (state) {
    case STATES.PLAYER_CHOOSES:
        // code here
		// in this state, cards can be selected.
		// if card requires targets, to go PLAYER_SELECTS.
		// else, if action points remaining, decrease action points by 1 and continue at this state
		// else, go to BLOCKS_RESOLVE.
        break;
		
	case STATES.PLAYER_SELECTS:
		// 
        // code here
        break;
		
	case STATES.PLAYER_ACTIONS_RESOLVE:
        // code here
        break;
	
    default:
        state = STATES.PLAYER_CHOOSES;
        break;
}






