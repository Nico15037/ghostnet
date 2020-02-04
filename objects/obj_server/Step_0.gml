// Menu room
//if (room == rm_menu)
{
	//*Host*
	if (keyboard_check_pressed(vk_space))
	{ net_create_server(network_socket_tcp,server_port,4,rm_graveyard); }
	else
	{
	//*Join*
	if (keyboard_check_pressed(vk_enter))
	{ net_join(network_socket_tcp,rm_graveyard); }
	}

}