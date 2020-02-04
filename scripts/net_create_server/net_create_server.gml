///@param type
///@param port
///@param maxclients
///@param room

server = network_create_server(argument0, argument1, argument2);
	
// Failed
if (server < 0) { show_error("Could not create server.", false); }
else
// Created
{ is_server = true; room_goto(argument3); show_debug_message("Server made!"); }