
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
            describe( "Event handlers Advanced Test", function() {
    
                beforeEach(function( currentSpec ){
                    setup();
                });
                
    
                it( "Change the welcome message value", function() {
                    // We are going to execute an Event called eventHandler.welcomeMessage
                    // Find the corresponding Event Handler, and the method, and change the value rc.welcomeMessage to "32123161"
                    
                    var event = execute( "eventHandler.welcomemessage" );
                    expect( event.getCollection().welcomeMessage ).toBe ( "32123161" );
                });

                it( "Set a variable in the private request scope", function() {
                    // We are going to execute the Event called eventHandler.welcomeMessage again.
		            // Look for an eventHandler Handler and the appropriate method, add a variable called secretSauce to the private scope set to 98494113
                    
                    var event = execute( "eventHandler.welcomemessage" );
                    expect( event.getPrivateCollection().secretSauce ).toBe ( "98494113" );
                });

                it( "Can set view MyView1", function() {
                    // We are going to execute an Event called eventHandler.whereismyview1
		            // Find the corresponding Event Handler, and the method, and set the view for that method to view1.cfm, located somewhere in the view folder.
                    
                    var event = execute( "eventHandler.whereismyview1" );
                    //Do your asserts below
                    var prc = event.getPrivateCollection();
                    assert( "view1" eq prc.currentView, "Set the View to the View1 file" );
                });

                it( "Can set view MyView2", function() {
                    // We are going to execute an Event called eventHandler.whereismyview2
                    // Find the corresponding Event Handler, and the method, and set the view for that method to view2.cfm, located somewhere in the view folder.
                    
                    var event = execute( "eventHandler.whereismyview2" );
                    //Do your asserts below
                    var prc = event.getPrivateCollection();
                    assert( "main/view2" eq prc.currentView, "Set the View to the View2.cfm file" );
                });

                it( "Can set view MyView3", function() {
                    // We are going to execute an Event called eventHandler.whereismyview3
                    // Find the corresponding Event Handler, and the method, and set the view for that method to view3.cfm, located somewhere in the view folder.
                    
                    var event = execute( "eventHandler.whereismyview3" );
                    //Do your asserts below
                    var prc = event.getPrivateCollection();
                    assert( "eventHandler/view3" eq prc.currentView, "Set the View to the View3.cfm file" );
                });

                it( "Fix the layout for welcome", function() {
                    // We are going to execute an Event called eventHandler.welcome for logged in users
                    // Find the corresponding Event Handler, and the method, and set the layout to use Admin.cfm not Main.cfm
                    // Hint, it is the setLayout function.
                    
                    var event = execute( "eventHandler.welcome" );
                    //Do your asserts below
                    var prc = event.getPrivateCollection();
                    assert( "Admin.cfm" eq prc.currentLayout, "Set the Layout to the Admin.cfm layout file" );
                });

                it( "Fix the layout for login error", function() {
                    // We are going to execute an Event called eventHandler.loginError for errors
                    // Find the corresponding Event Handler, and the method, and set the layout to use Error.cfm not Main.cfm
                    // Hint, edit the setView function, and add an argument to set the layout at the same time you set the view.
                    
                    var event = execute( "eventHandler.loginError" );
                    //Do your asserts below
                    var prc = event.getPrivateCollection();
                    assert( "Error.cfm" eq prc.currentLayout, "Set the Layout to the Error.cfm layout file" );
                });

                it( "Relocate In ColdBox", function() {
                    // We are going to execute an Event called eventHandler.doSomething
                    // Then we are going to test to see if that event relocates to eventHandler.didSomething
                    // Add the coldbox syntax for relocation to eventHandler.didSomething into the eventHandler handler in the doSomething method.
                    
                    var event = execute( "eventHandler.doSomething" );
                    //Do your asserts below
                    assert( "eventHandler/didSomething" eq event.getCollection().relocate_event , "Relocation Test - Add the coldbox syntax for relocation to eventHandler.didSomething" );
                });

                it( "Relocate when good login", function() {
                    // We are going to execute an Event called eventHandler.login
                    // We are passing in username and password via URL.
                    // Add the coldbox syntax for relocation to eventHandler.welcome if the username and password are correct
                    
                    url.username="Rose";
                    url.password="badwolf";
                    var event = execute( "eventHandler.login" );

                    //Do your asserts below
                    assert( "eventHandler/welcome" eq event.getCollection().relocate_event , "Relocation Test - Add the coldbox syntax for relocation to eventHandler.welcome for a Good Login");
                });

                it( "Relocate when bad login", function() {
                    // We are going to execute an Event called eventHandler.login
                    // We are passing in username and password via URL
                    // Add the coldbox syntax for relocation to advancedeventhandler.loginError if the username and password are correct
                    
                    url.username="Rose";
                    url.password="doctor";
                    var event = execute( "eventHandler.login" );
                    //Do your asserts below
                    assert( "eventHandler/loginError" eq event.getCollection().relocate_event, "Relocation Test - Add the coldbox syntax for relocation to eventHandler.loginError for a Bad Login");
                });

                it( "Use one event to execute another event", function() {
                    // We are going to execute an Event called eventHandler.executeAnotherEvent
                    // Find the corresponding Event Handler, and the method, and add the syntax to execute the public event eventHandler.publicSecret
                    // The eventHandler.publicSecret event will set a variable in the PRC for us to verify.
                    
                    var event = execute( "eventHandler.executeAnotherEvent" );
                    //Do your asserts below
                    assert( "Rose" eq event.getPrivateCollection().BestCompanion, "For the event eventHandler.executeAnotherEvent find the corresponding Event Handler, and the method, and add the syntax to execute the public event eventHandler.publicSecret");
                });

                it( "Use one event to execute a private event", function() {
                    // We are going to execute an Event called eventHandler.executeAnotherEventPrivate
                    // Find the corresponding Event Handler, and the method, and add the syntax to execute the private event eventHandler.privateSecret
                    // The eventHandler.privateSecret event will set a variable in the PRC for us to verify.
                    
                    var event = execute( "eventHandler.executeAnotherEventPrivate" );
                    //Do your asserts below
                    assert( "Jack" eq event.getPrivateCollection().OldestFriend, "For the event eventHandler.executeAnotherEventPrivate find the corresponding Event Handler, and the method, and add the syntax to execute the private event eventHandler.privateSecret");

                });
   
            });
        }
        
        
    }

