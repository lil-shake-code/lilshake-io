// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SendMessageToClient(recieverClientId, yourMessage){
	//format for sending info to server 
		var Buffer = buffer_create(1, buffer_grow, 1)
	
		//WHAT DATA 
		var data = ds_map_create();
		data[? "serverId"] = global.SERVERID;
		data[?"message"] = yourMessage
		data[? "clientId"] = global.clientId;
		data[? "RclientId"] = recieverClientId;
		ds_map_add(data,"eventName","SMTC");
		buffer_write(Buffer, buffer_text, json_encode(data))
		network_send_raw(oBrain.socket, Buffer, buffer_tell(Buffer),network_send_text)
		buffer_delete(Buffer)
		ds_map_destroy(data)


}