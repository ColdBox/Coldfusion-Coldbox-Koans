
/**
* My BDD Test
*/
component extends="coldbox.system.testing.BaseTestCase" appMapping="/"{

    /*********************************** LIFE CYCLE Methods ***********************************/
    
        // executes before all suites+specs in the run() method
        function beforeAll(){
            
        }
    
        // executes after all suites+specs in the run() method
        function afterAll(){
            
        }
    
    /*********************************** BDD SUITES ***********************************/
    
        function run( testResults, testBox ) {
            // all your suites go here.
            describe( "Layouts and views Advanced Test", function() {
    
                beforeEach(function( currentSpec ) {
                    setup();
                });
                
                it( "Can find myview1", function() {
                    // We are going to execute an Event called advancedlayoutsviews.whereismyview1
					// Find the corresponding Event Handler, and the method, find and set the content of view.cfm to 9948913103
					// For the event layoutsViews.whereismyview1 find the corresponding Event Handler, and the method, and set the content of the view for that method to 9948913103
                    
                    var event = execute( "layoutsViews.whereismyview1" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "9948913103" );
                });
		
                it( "Can find the view2 file with the required content", function() {
                   	// We are going to execute an Event called layoutsViews.whereismyview2
					// Find the corresponding Event Handler, and the method, find and replace the current content of view2.cfm to 71314891
					
					var event = execute( "layoutsViews.whereismyview2" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "71314891" );
				});

				it( "Can find the view3 file with the required content", function() {
					// We are going to execute an Event called layoutsViews.whereismyview3
					// Find the corresponding Event Handler, and the method, find and replace the current content of view3.cfm to 386014613
					
					var event = execute( "layoutsViews.whereismyview3" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "386014613" );
                 });
                 
                 it( "Can find the layout1", function() {
					// We are going to execute an Event called layoutsviews.whereismylayout1
		            // Find the corresponding Event Handler, and the method, find and set the content of newlayout.cfm to 6168498413
					
					var event = execute( "layoutsViews.whereismylayout1" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "6168498413" );
                 });
                 
                 it( "Can find the layout2", function() {
					// We are going to execute an Event called advancedlayoutsviews.whereismylayout2
		            // Find the corresponding Event Handler, and the method, find and set the content of newlayout.cfm to 133119713
					
					var event = execute( "layoutsViews.whereismylayout2" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "133119713" );
                 });
                 
                 it( "Can fix my layout1", function() {
					// We are going to execute an Event called advancedlayoutsviews.fixmylayout1
		            // Find the corresponding Event Handler, and the method, find and layout file, and fix it so it displays the view in the layout. ( content to fix the layout: 123456789 )
					
					var event = execute( "layoutsViews.fixmylayout1" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "123456789" );
                 });
                 
                 it( "Can find the view3 file with the required content", function() {
					// We are going to execute an Event called layoutsViews.whereismyview3
					// Find the corresponding Event Handler, and the method, find and replace the current content of view3.cfm to 386014613
					
					var event = execute( "layoutsViews.whereismyview3" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "386014613" );
                 });
                 
                 it( "Can render some XML", function() {
					// We are going to execute an Event called layoutsviews.renderSomeXML
		            // Find the corresponding Event Handler, and the method, and add the syntax to render the companions query as xml.
					
					var event = execute( "layoutsViews.renderSomeXML" );
					// Do your expectations below
                    var prc = event.getPrivateCollection();
                    expect( prc.cbox_renderdata.type ).toBe( "xml" );
                 });
                 
                 it( "Can render some JSON", function() {
					// We are going to execute an Event called layoutsviews.renderSomeXML
		            // Find the corresponding Event Handler, and the method, and add the syntax to render the companions query as json.
					
					var event = execute( "layoutsViews.renderSomeJSON" );
					// Do your expectations below
                    var prc = event.getPrivateCollection();
                    expect( prc.cbox_renderdata.type ).toBe( "json" );
                 });
                 
                 it( "Can render some data in JSON format", function() {
					// We are going to execute an Event called advancedlayoutsviews.renderSomeData
                    // Find the corresponding Event Handler, and the method, and add the syntax to render the companions query as the format requested via the URL param.
                    
                    // Normally you would suffix your query string with the extension, and ColdBox would automagically create a variable called rc.format for you.
                    // /layoutsviews/renderSomeData?format=xml could create rc.format = "xml"
                    // /layoutsviews/renderSomeData?format=json could create rc.format = "json"
                    // /layoutsviews/renderSomeData?format=pdf could create rc.format = "pdf"
                    // /layoutsviews/renderSomeData?format=html could create rc.format = "html"
                    // In this case, we are testing the JSON use case. find the corresponding Event Handler, and the method, and add the syntax to render the companions query as the format requested via the URL param. In this case JSON
					
					url.format = "json";
		
		            var event = execute( "layoutsViews.renderSomeData" );
					// Do your expectations below
                    var prc = event.getPrivateCollection();
                    expect( prc.cbox_renderdata.type ).toBe( "json" );
                 });
                 
                 it( "Can render some data in PDF format", function() {
					// Normally you would suffix your query string with the extension, and ColdBox would automagically create a variable called rc.format for you.
                    // /layoutsviews/renderSomeData?format=xml could create rc.format = "xml"
                    // /layoutsviews/renderSomeData?format=json could create rc.format = "json"
                    // /layoutsviews/renderSomeData?format=pdf could create rc.format = "pdf"
                    // /layoutsviews/renderSomeData?format=html could create rc.format = "html"
                    // In this case, we are testing the PDF use case. find the corresponding Event Handler, and the method, and add the syntax to render the companions query as the format requested via the URL param. In this case PDF

                    url.format = "pdf";
                                
					var event = execute( "layoutsViews.renderSomeData" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.type ).toBe( "pdf" );
                 });
                 
                 it( "Can render some data in HTML format", function() {
					// Normally you would suffix your query string with the extension, and ColdBox would automagically create a variable called rc.format for you.
                    // /layoutsviews/renderSomeData?format=xml could create rc.format = "xml"
                    // /layoutsviews/renderSomeData?format=json could create rc.format = "json"
                    // /layoutsviews/renderSomeData?format=pdf could create rc.format = "pdf"
                    // /layoutsviews/renderSomeData?format=html could create rc.format = "html"
                    // In this case, we are testing the HTML use case. find the corresponding Event Handler, and the method, and add the syntax to render the companions query as the format requested via the URL param. In this case HTML

                    url.format = "html";
                                
					var event = execute( "layoutsViews.renderSomeData" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.type ).toBe( "html" );
                 });
				
		   
            });
        }
        
        
    }

