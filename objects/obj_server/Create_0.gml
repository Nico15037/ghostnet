open_two_windows();

// Connection info
server_ip = "127.0.0.1";
server_port = 3000;
server = -1;
is_server = false;

// Data types
enum DATA
{
	INIT_DATA,
	CLIENT_UPDATE,
	NEW_OBJ,
	DESTROY_OBJ
}

// Connected clients
clients = ds_list_create();