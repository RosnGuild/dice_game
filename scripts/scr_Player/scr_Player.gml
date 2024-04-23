// Functions for working with the Player entity.

// Player variables

global.player_max_hp = 40;

global.player_current_hp = global.player_max_hp;

// These functions handle player energy, which is used to limit the number of actions the player can take in a turn.
function reset_energy(_player) {
	_player.current_energy = _player.base_energy;
}

function decrement_energy(_player, _energy_cost = 1) {
	_player.current_energy -= _energy_cost;
}

function increment_energy(_player, _energy_cost = 1) {
	_player.current_energy += _energy_cost;
}