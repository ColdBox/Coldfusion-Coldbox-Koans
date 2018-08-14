
/**
* My Event Handler Hint
*/
component extends="coldbox.system.EventHandler"{

    var data = new modules.mockdatacfc.MockData().mock(
        num = 6,
        id = "autoincrement",
        name = "name",
        email = "email",
        age = "age",
        biography = "baconlorem"
    );
    
    /**
    * Index
    */
    any function index( event, rc, prc ) {
        event.setView( "layoutsviews/index" );
    }
	
	function welcomeMessage( event,rc,prc ) {
		rc.welcomeMessage = "";	
	}	
	
	function whereismyview1( event,rc,prc ) {
		event.renderData( type="html", data=renderView( "layoutsViews/view" ) );
	}	
	
	function whereismyview2( event,rc,prc ) {
		event.renderData( type="html", data=renderView( "view2" ) );
	}	
	
	function whereismyview3( event,rc,prc ) {
		event.renderData( type="html", data=renderView( "layoutsviews/more/view3" ));
	}	
	
	function whereismylayout1( event,rc,prc ) {
		event.renderData( type="html", data=renderlayout( layout="newlayout", view="layoutsviews/advanced/blank") );
	}	
	
	function whereismylayout2( event,rc,prc ) {
		event.renderData( type="html", data=renderlayout( layout="advancedlayoutsviews/newlayout", view="layoutsviews/advanced/blank" ) );
	}
	
	function fixmylayout1( event,rc,prc ) {
		event.renderData( type="html", data=renderlayout( layout="advancedlayoutsviews/fixme", view="layoutsviews/donoteditme" ) );
	}
	
	function renderSomeXML( event,rc,prc ) {
		//Add the right code to render the companions query as xml.
	}
	
	function renderSomeJSON( event,rc,prc ) {
		//Add the right code to render the companions query as json.
	}
	
	function renderSomeData( event,rc,prc ) {
		//Add the right code to render the companions query as the format requested.
		// It might be xml, json, html or pdf
		// If you add .xml / .json etc on the end of your query string, coldbox automagically sets a variable for this.
		// Use this automagic variable to display the right type of content.
	}

	// EXPERT TESTS START HERE

	function viewExists( event, rc, prc ) {
		event.renderData( type="html", data=renderView( "layoutsviews/expert/buildaview" ) );
	}

	function layoutExists( event, rc, prc ){
		event.renderData( type="html", data=renderLayout( layout="expertlayoutsviews/buildalayout", view="layoutsviews/expert/buildaview" ) );
	}
    
}
