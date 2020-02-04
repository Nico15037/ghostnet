if (is_local)
{

clientID = string(object_index) + string(instance_number(object_index));

// Send player info
var init_buffer = buffer_create(10, buffer_fixed, 1);

buffer_write(init_buffer, buffer_u8, DATA.NEW_OBJ);		//show_debug_message(string(buffer_tell(init_buffer))+"init");
buffer_write(init_buffer, buffer_s16, x);	//show_debug_message(string(buffer_tell(init_buffer))+"x");
buffer_write(init_buffer, buffer_s16, y);	//show_debug_message(string(buffer_tell(init_buffer))+"y");
buffer_write(init_buffer, buffer_u8, layer);	//show_debug_message(string(buffer_tell(init_buffer))+"lyr");
buffer_write(init_buffer, buffer_u8, object_index);		//show_debug_message(string(buffer_tell(init_buffer))+"obj"); //maybe boost this for bigger games
buffer_write(init_buffer, buffer_u8, clientID);		//show_debug_message(string(buffer_tell(init_buffer))+"ID");

net_send_data(init_buffer);

buffer_delete(init_buffer);

}