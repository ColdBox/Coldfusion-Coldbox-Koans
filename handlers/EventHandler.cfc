/**
* I am a new handler for the Event Handler Sample Exercises
* This is where you will do the Advanced Exercises
*/
component extends="coldbox.system.EventHandler"{
    
    function index( event, rc, prc ){
		// Use the default layout by convention: Main
		event.setView( "eventHandlers/index" );
	}

	function welcomeMessage( event,rc,prc ){
		rc.welcomeMessage = "Welcome to ColdBox 5 Koans!"
	}	

	function noLayout( event,rc,prc ){
		rc.title = "Welcome to ColdBox 5 Koans!";
		event.setView( view="eventHandlers/noLayout" );
	}

	function whereismyview1( event, rc, prc ){

	}	

	function whereismyview2( event, rc, prc ){

	}	

	function whereismyview3( event, rc, prc ){

	}	

	function whereismyview4( event, rc, prc ){
		event.setView( "eventHandlers/index" );
	}	


	function doSomething( event, rc, prc ){

	}

	function welcome( event, rc, prc ){
		rc.theMessage = "Welcome Back";	
	}	

	function loginError( event, rc, prc ){
		rc.theMessage = "Error Logging In";	
		event.setView( view="advancedevent/loginerror", layout="Main" );
	}	

	function login( event, rc, prc ){
		//Pretend we got this data from the DB to verify login details
		prc.username = "Rose";
		prc.password = "badwolf";
			
		if (rc.username == prc.username && rc.password == prc.password) {
			
		}
		else
		{
			
		}
		
	}	

	function executeAnotherEvent( event, rc, prc ){
		// execute the public event advancedEvent.publicSecret
	}	

	function executeAnotherEventPrivate( event, rc, prc ){
		// execute the private event advancedEvent.privateSecret
	}	

	function publicSecret( event, rc, prc ){
		prc.bestCompanion = "Rose";
	}

	private function privateSecret( event, rc, prc ){
		prc.oldestFriend = "Jack";
	}
	
}