
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
                });

                // Create resources
                // Create route for the API call you did in the Advanced
    
                it( "Can create a new handler", function() {
                    // We are going to execute an Event called ExpertEvent
                    // Make a new Handler called expertEvent and a Method to catch this event and set a variable rc.welcomeMessage to "919643641"
                    
                    var event = execute( event="expertEvent.index", renderResults=false );
                    // Do your asserts below
                    expect(	event.getValue( name="welcomemessage" ) ).toBe( "919643641" );
                    // TODO renderResults
                });

                it( "Can make a new handler action", function() {
                    // We are going to execute an Event called expertEvent.mySecondAction
                    // Make a new Handler and Method to catch the expertEvent.mySecondAction event and set a variable rc.welcomeMessage to ThisIsEasy
                    
                    var event = execute( "expertEvent.mySecondAction" );
                    // Do your expectations below
                    expect(	event.getCurrentAction() ).toBe( "mySecondAction" );

                });

                it( "Can relocate and set a new view", function() {
                    // We are going to execute an Event called expertEvent.myThirdAction
                    // Make a new Handler and Method to catch the expertEvent.myThirdAction event and relocate to a new action called expertEvent.myForthAction
                    
                    var event = execute( "expertEvent.myThirdAction" );
                    // Do your expectations below
                    expect(	event.getCurrentAction() ).toBe( "myThirdAction" );
                    expect(	event.getCollection().relocate_event ).toBe( "expertEvent/myForthAction" );

                });

                it( "Can set a new view", function() {
                    // We are going to execute an Event called expertEvent.myThirdAction
                    // Create a new view in the folder `views/ExpertEvent/myAwesomeview.cfm` and set it in the `expertEvent.myForthAction`
                    
                    var event = execute( "expertEvent.myForthAction" );
                    // Do your expectations below
                    expect(	event.getCurrentView() ).toBe( "expertEvent/myAwesomeView" );

                });

   
            });
        }
        
        
    }

