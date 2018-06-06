
/**
* My BDD Test
*/
component extends="coldbox.system.testing.BaseTestCase" appMapping="/"{

    /*********************************** LIFE CYCLE Methods ***********************************/
    
        // executes before all suites+specs in the run() method
        function beforeAll() {
            
        }
    
        // executes after all suites+specs in the run() method
        function afterAll() {
            
        }
    
    /*********************************** BDD SUITES ***********************************/
    
        function run( testResults, testBox ) {
            // all your suites go here.
            describe( "Layouts and views Expert Test", function() {
    
                beforeEach(function( currentSpec ) {
                    setup();
                });
                

				it( "Can make a new view file", function() {
					// Make a new view file so our function that uses the view layoutsviews/viewExists works
					// Add 615198711631 as the content for that view to verify
					
                    var event = execute( "layoutsViews.viewExists" );
					// Do your expectations below
					var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "615198711631" );
				});
				
				it( "Can make a new layout file", function() {
                    // Make a new layout file so our function that uses the view layoutsviews/layoutExists works
					// Add 13216519863 somewhere in the Layout to verify
					
                    var event = execute( "layoutsViews.layoutExists" );
					// Do your expectations below
                    var prc = event.getPrivateCollection();
					expect( prc.cbox_renderdata.data ).toBe( "13216519863" );
				});
		   
            });
        }
        
        
    }

