/// @description 
var type = async_load[? "type"];

// Connected
if (type == network_type_connect)
{ net_init_joiner(); }

else

// Data
{

if (type == network_type_data)
{
var buffer = async_load[? "buffer"];
buffer_seek(buffer, buffer_seek_start, 0);
var data = buffer_read(buffer, buffer_u8);

#region INIT_DATA

if (data == DATA.INIT_DATA)
{

var count = buffer_read(buffer, buffer_u8);
show_debug_message(string(count)) //count = client list size

// Set your client's ID
obj_client.clientID = count;

// Create other clients
for (var i=0; i < count; i++)
{
var plr = instance_create_depth(0,0,0,obj_client);
plr.clientID = i;
plr.is_local = false;
}

}

#endregion

#region NEW_OBJ

if (data == DATA.NEW_OBJ)
{
obj_server.image_blend = c_yellow;
// Create obj
var xpos = buffer_read(buffer, buffer_s16);	show_debug_message(string(buffer_tell(buffer))+"x");
var ypos = buffer_read(buffer, buffer_s16);	show_debug_message(string(buffer_tell(buffer))+"y");
var lyr = buffer_read(buffer, buffer_u8);	show_debug_message(string(buffer_tell(buffer))+"lyr "+string(lyr));
var obj = buffer_read(buffer, buffer_u8);	show_debug_message(string(buffer_tell(buffer))+"obj");

var inst = instance_create_layer(xpos,ypos,"lyr_prey",obj);
inst.clientID = buffer_read(buffer, buffer_u8);
inst.is_local = false;

}

#endregion

#region CLIENT_UPDATE

if (data == DATA.CLIENT_UPDATE)
{
var oID = buffer_read(buffer, buffer_u8);
var obj = buffer_read(buffer, buffer_u8);

	with(obj)
	{
		if (oID == clientID)
		{
			for (var i = 0; i < ds_list_size(myvars); i += 1)
			{ myvars[| i] = buffer_read(buffer, buffer_s16); show_debug_message(myvars[| i]); }
		}
	}

}

#endregion

#region DESTROY_OBJ

if (data == DATA.DESTROY_OBJ)
{
var oID = buffer_read(buffer, buffer_u8);
var obj = buffer_read(buffer, buffer_u8);

	with(obj)
	{
		if (oID == clientID)
		{ instance_destroy(); }
	}

}

#endregion

}
}