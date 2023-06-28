/// @description Update this entity as much as you want

/*
* Update this struct
*/
entityProperties = {
	_entityId : entityId,
	//Add stuff here like type / x / y / whatever
	
	_x : x,
	_y : y


}

//if this hits another player, destroy and tell the other player you got hit
var victim = instance_place(x,y,oOtherPlayer);

if(victim != noone){
	instance_destroy();
	SendMessageToClient(victim.clientId, "hit")

}





















