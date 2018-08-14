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
            describe( "Models Advanced Test", function() {
    
                beforeEach(function( currentSpec ){
                    setup();
                    contactService = getInstance( "ContactService" );
                });

                it( "Can create Contact Service in the models folder", function() {
                    expect( contactService ).toBeComponent ();
                });
                   
                it( "Can make `ContactService` a singleton and accessors = true", function() {
                    // Create a property called `data` the accessors=true attribute should create your setters and getters for you
                    var data = contactService.getData();
                    expect( data ).toBeArray();
                });

                it( "Can inject the Mock Data Service via the property annotation and store it in the variables scope", function() {
                    var mockData = contactService.getPropertyMixin( "mockData" );
                    expect( mockData ).notToBeNull();
                });

                it( "Can create an array of contacts using mockdata in the constructor with the following values (id, firstName, lastName, email)", function() {
                    var contacts = contactService.getData();
                    expect( contacts ).toBeArray();
                });

                it( "Can retrieve a list of contacts contacts using the `list` method)", function() {
                    var contacts = contactService.list();
                    expect( contacts ).toBeArray();
                });

                it( "Can retrieve a contact by id using a `get` method", function() {
                    var contact = contactService.get( );
                    expect( contact ).toHaveLenght( 1 );
                });

             });
        }
    }