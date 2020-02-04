///@param x
///@param y
///@param layer
///@param object

var socket = async_load[? "socket"];
	
// Send player info
var init_buffer = buffer_create(2, buffer_fixed, 1);

buffer_write(init_buffer, buffer_u8, DATA.INIT_DATA);
buffer_write(init_buffer, buffer_u8, ds_list_size(clients));
		
network_send_packet(socket, init_buffer, buffer_get_size(init_buffer));
buffer_delete(init_buffer);
		
// Create player instance
var plr = instance_create_depth(0,0,0,obj_client);
plr.clientID = ds_list_size(clients);
plr.is_local = false;

// Add to list
ds_list_add(clients, socket);