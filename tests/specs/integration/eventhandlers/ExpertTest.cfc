
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
    
        function run( testResults, testBox ){
            // all your suites go here.
            describe( "Event handlers Expert Test", function() {
    
                beforeEach(function( currentSpec ){
                    setup();
                    cachebox = getInstance( dsl="cachebox" );
                });

                  // Create a describe, nested suite
                  it( "Can leverage the ColdBox resources to create a full API of the contacts", function() {
                    // You will need to create the `contacts` resources in config/Router.cfc
                    // Make sure you have the following functions in the contacts handler index, new, create, show, edit, update, delete
                    request( route="/contacts" );
                    request( route="/contacts/new" );
                    request( route="/contacts/create" );
                    request( route="/contacts/show" );
                    request( route="/contacts/edit" );
                    request( route="/contacts/update" );
                    delete( route="/contacts/delete" );
                });

                it( "Can relocate and set a new view", function() {
                    // We are going to execute an Event called contacts.mySecondAction
                    // Make a new Handler and Method to catch the contacts.mySecondAction event and relocate to a new action called contacts.myForthAction
                    
                    var event = execute( "contacts.mySecondAction" );
                    // Do your expectations below
                    expect(	event.getCurrentAction() ).toBe( "mySecondAction" );
                    expect(	event.getCollection().relocate_event ).toBe( "contacts/ThirdAction" );

                });

                it( "Can set a new view", function() {
                    // We are going to execute an Event called contacts.myThirdAction
                    // Create a new view in the folder `views/contacts/myAwesomeview.cfm` and set it in the `contacts.myForthAction`
                    
                    var event = execute( "contacts.myThirdAction" );
                    // Do your expectations below
                    expect(	event.getCurrentView() ).toBe( "contacts/myAwesomeView" );

                });

                it( "Can add event caching to returnListAsJSON method", function() {
                    // Add the event caching annotation to the `get` and `list` methods on the `Contacts` handler for the following methods returnListAsJSON, returnContactAsJSON
                    
                    var event = execute( "contacts.returnListAsJSON" );
                    var results = event.getPrivateCollection();
                    // Expectations
                    //writeDump( cachebox.getCache( "template" ).getKeys() ); abort;
                    expect( results.cbox_eventCacheableEntry.cacheable ).toBeTrue();

                });

                it( "Can add allowed methods annotation for index", function() {
                    // Use GET as the only allowed HTTP method
                    // POST HTTP should error, 500 status code

                    http url="http://#cgi.http_host#/contacts/index" method="GET" result="result"{};
                    expect( result.status_code ).toBe( 500 );

                });         

                it( "Can add allowed methods annotation for returnListAsJSON", function() {
                    // Use GET as the only allowed HTTP method
                    // Using a GET HTTP method for returnListAsJSON should return a status code of 200
                    
                    http url="http://#cgi.http_host#/contacts/returnListAsJSON" method="GET" result="result"{};
                    expect( result.status_code ).toBe( 200 ); 

                });         

            });
        }
        
        
    }

