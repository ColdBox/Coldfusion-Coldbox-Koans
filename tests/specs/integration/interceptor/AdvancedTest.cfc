/**
* My BDD Test
*/
component extends="coldbox.system.testing.BaseTestCase" appMapping="/"{

    //property name="interceptors" inject="coldbox:setting:interceptors";

    /*********************************** LIFE CYCLE Methods ***********************************/
    
        // executes before all suites+specs in the run() method
        function beforeAll(){
            reset();
            
        }
    
        // executes after all suites+specs in the run() method
        function afterAll(){
            
        }
    
    /*********************************** BDD SUITES ***********************************/
    
        function run( testResults, testBox ){
            // all your suites go here.
            describe( "Interceptor Advanced Test", function() {
    
                beforeEach(function( currentSpec ){
                    setup();
                    interceptor = getInstance( dsl="coldbox:interceptor:MyInterceptor" );
                    //log = getInstance( dsl="logbox:logger:{this}" );
                    logBox = getInstance( dsl="logbox" );
                });
                    
                it( "Create a timer interceptor that listens to preEvent() and postEvent() and logs using the default log object in every interceptor", function() {                   
                    // Create a timerValue with the count
                    var event= execute( "eventHandler.index" );
                    var timerInterceptor = getInstance( dsl="coldbox:interceptor:TimerInterceptor" );
                    expect( timerInterceptor ).notToBeNull(); 
                    expect( event.getPrivateValue( "timerValue" ) ).toBeNumeric();
   
                });

                it( "Create an interceptor that produces a nice confidentiality footer on every page by listenting to the postLayoutRender?", function() {                   
                    // Verify that the interceptor is adding the footer on the pages, render any view and check for the footer to exist
                    var event = execute( event="eventHandler.index", renderResults=true );
                    expect( event.getRenderedContent() ).toMatch( "\<footer" );
                });

            });
        }
        
    }

