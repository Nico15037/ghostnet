// Send data to server
if !(obj_server.is_server) {
	network_send_packet(obj_server.server, argument0, buffer_get_size(argument0));
}
// Send data to clients
else {
	// Loop through clients list
	for (var i=0; i<ds_list_size(obj_server.clients); i++) {
		// Get socket
		var soc = obj_server.clients[| i];
		
		// Skip if server itself
		if (soc < 0) { continue; }
		
		// Send
		network_send_packet(soc, argument0, buffer_get_size(argument0));
	}
}