
/**
* My Event Handler Hint
*/
component extends="coldbox.system.EventHandler"{
    

    /**
    * Index
    */
    any function index( event, rc, prc ) {
        rc.welcomemessage = "919643641";
    }

    /**
    * mySecondAction
    */
    any function mySecondAction( event, rc, prc ) {

    }

    /**
    * myThirdAction
    */
    any function myThirdAction( event, rc, prc ) {
        relocate( "expertEvent/myForthAction" );
    }

    /**
    * myThirdAction
    */
    any function myForthAction( event, rc, prc ) {
        event.setView( "expertEvent/myAwesomeview" );
    }
    
}
