// Create buffer
var buffer = buffer_create(20, buffer_grow, 1);

// Write to buffer
buffer_write(buffer, buffer_u8, DATA.CLIENT_UPDATE);
buffer_write(buffer, buffer_u8, clientID);

buffer_write(buffer, buffer_u8, object_index);

for (var i = 0; i < ds_list_size(myvars); i += 1)
{ buffer_write(buffer, buffer_s16, ds_list_find_value(myvars,i)); }

net_send_data(buffer);

// Delete buffer
buffer_delete(buffer);