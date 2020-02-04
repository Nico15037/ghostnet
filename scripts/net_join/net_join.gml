///@param type
///@param room

server = network_create_socket(argument0);
var served = network_connect(server, server_ip, server_port);

// Failed
if (served < 0) { show_error("Could not connect to server.", false); }
else
// Connected
{ room_goto(argument1); show_debug_message("Joined!"); }