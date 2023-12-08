// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function callback_ReceivedMessage(theMessage , senderClientId){
	//show_message("You got a message : "+theMessage+" from "+string(senderClientId))
	
	if(theMessage == "hit" and health>0){
		health-=10;
		global.lastBulletFiredBy = real(senderClientId)
		
		//if health is below 0, add a kill to the opponent
		if(health<=0){
			SendMessageToClient(senderClientId, "you_killed_me")
		}
	}
	
	
	if(theMessage == "you_killed_me"){//someone is telling us that we killed them
		score++;
	}

}