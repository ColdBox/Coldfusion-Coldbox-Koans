
/**
* This is the Models handler
*/
component extends="coldbox.system.EventHandler"{
    
    /**
    * Index
    */
    any function index( event, rc, prc ){
        event.setView( "model/index" );
    }

    /**
    * createContactService
    */
    function createContactService(){
        // Create a Contact Service within the models folder
    }
    
    
}
