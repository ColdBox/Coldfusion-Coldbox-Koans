/**
* My BDD Test
*/
component extends="coldbox.system.testing.BaseTestCase" appMapping="/"{

    //property name="interceptors" inject="coldbox:setting:interceptors";

    /*********************************** LIFE CYCLE Methods ***********************************/
    
        // executes before all suites+specs in the run() method
        function beforeAll(){
            //reset();
            
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
                    interceptor = getInstance( dsl="coldbox:interceptor:myInterceptor" );
                    //log = getInstance( dsl="logbox:logger:{this}" );
                    logBox = getInstance( dsl="logbox" );
                });
                    
                it( "Create a timer interceptor that listens to preEvent() and postEvent() and logs using the default log object in every interceptor", function() {                   
                    // Verify that the interceptor is listening to preEvent() and postEvent()
                    //writeDump( log ); abort;
                    execute( "eventHandler.index" );

                    var response = interceptor.preProcess;
                    expect( response ).toBe( "preProcess()" );
                });

                it( "Create an interceptor that produces a nice confidentiality footer on every page by listenting to the postProcess/postLayout?", function() {                   
                    // Verify that the interceptor is adding the footer on the pages
                });

            });
        }
        
    }

