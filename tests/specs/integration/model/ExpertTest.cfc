
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
            describe( "Models Expert Test", function() {
    
                beforeEach(function( currentSpec ){
                    setup();
                    contactService = prepareMock( getInstance( "ContactService" ) );
                });

                it( "Can Create a method to add a new contact", function() {
                    // Create a method that creates a new contact and return the object
                    newContact = contactService.add( "name","email" );
                    expect( newContact.getID() ).notToBeNull();
                });

                it( "Can Create a method to update a new contact", function() {
                    // Update the first name of any of your contacts uising the update method you created before
                    //Please assign a value for the following variables, Please notice that id `111` will not exist. Use valid id
                    id = "111";
                    firstName="";
                    email="myTestEmail";
                    updatedContact = contactService.update( id, firstName, email );
                    expect( updatedContact ).toBeTrue();
                });

                it( "Can Create a method to delete a new contact", function() {
                    // Delete a contact sending its id
                    id = "";
                    isDeleted = contactService.delete( id );
                    expect( isDeleted ).toBeTrue();
                });

                it( "Inject a logger object for this class: inject=logbox:logger:{this} and log when contacts are created, deleted and updated.", function() {
                    var mockLogger = prepareMock(
                        contactService.getPropertyMixin( "log" )
                    ).$( "info" );
                    expect( mockLogger.$once( "info" ) ).toBeTrue();
                });

        });
        }
    }