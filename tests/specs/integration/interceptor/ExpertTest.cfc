
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
            describe( "Interceptor Expert Test", function() {
    
                beforeEach(function( currentSpec ){
                    setup();
                });


                it( "Register the following custom interception points: `onContactCreate`, `onContactUpdate`, `onConctactDelete`", function() {                   
                    // Verify that the interceptor is adding the footer on the pages
                    writeDump( controller ); abort;
                });
                    
                it( "Add announcements for `onContactCreate`, `onContactUpdate`, `onConctactDelete` in the contacts handler", function() {                   
                    // Add announcements
                });

                it( "Create a new interceptor called `ContactCacheCleaner` that will listen to the points above and will clear the template cache", function() {                   
                    // Verify that the interceptor exists and that the template cache is cleared
                });
                

            });
        }
        
        
    }

