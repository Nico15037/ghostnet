var destroy_buffer = buffer_create(3, buffer_fixed, 1);

buffer_write(destroy_buffer, buffer_u8, DATA.DESTROY_OBJ);
buffer_write(destroy_buffer, buffer_u8, clientID);
buffer_write(destroy_buffer, buffer_u8, object_index);

net_send_data(destroy_buffer);

buffer_delete(destroy_buffer);

if (ds_exists(myvars,ds_type_list)) { ds_list_destroy(myvars); }