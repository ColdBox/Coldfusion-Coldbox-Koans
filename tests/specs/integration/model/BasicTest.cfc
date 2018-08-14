
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
            describe( "Models Basic Test", function(){
    
                beforeEach(function( currentSpec ){
                    setup();
                    answersService = getInstance( "Answers" );
                    answers = answersService.init();
                });

                
                // Question # 1
                // Fill the blank
                it( "A ________ layer approach is a way to architect enterprise applications in which there is a layer that acts as a service or mediator to your domain models, data layers and so forth.", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer1 );
                    expect( result ).toBe ( true );
                });

                // Question # 2
                it( "What annotation would you add to a model component declaration to make the model persist forever", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer2 );
                    expect( result ).toBe ( true );
                });

                // Question # 3
                it( "All model components are singletons by convention (true/false)", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer3 );
                    expect( result ).toBe ( true );
                });

                // Question # 4
                it( "All models are instantiated and wired by which library inside of ColdBox", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer4 );
                    expect( result ).toBe ( true );
                });

                // Question # 5
                it( "What is the name of the method that is called by convention after all dependencies are injected in a model", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer5 );
                    expect( result ).toBe ( true );
                });

                // Question # 6
                it( "If you will use a circular dependency then you must use XXX (constructor,property) injection", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer6 );
                    expect( result ).toBe ( true );
                });

                // Question # 7
                it( "What is the default annotation on a property for injecting other objects?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer7 );
                    expect( result ).toBe ( true );
                });

                // Question # 8
                it( "What is the default scope to which objects are injected when using property injection?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer8 );
                    expect( result ).toBe ( true );
                });

                // Question # 9
                it( "What method is used to populate FORM/URL data by convention to a model object?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer9 );
                    expect( result ).toBe ( true );
                });

                // Question # 10
                it( "List the valid population data types you can use to populate a model object. Hint: 5 types, please separate them by commas sort them alphabetically. Example: aaa,bbb,ccc,ddd,eee", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer10 );
                    expect( result ).toBe ( true );
                });

                // Question # 11
                it( "What is the name of the method to retrieve a model object?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer11 );
                    expect( result ).toBe ( true );
                });

                // Question # 12
                it( "What component annotation do you use to generate automatic getters and setters?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer12 );
                    expect( result ).toBe ( true );
                });

                // Question # 13
                it( "What setting do you use to reload the singletons on every request for development purposes?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer13 );
                    expect( result ).toBe ( true );
                });

                // Question # 14
                it( "If you want to map a folder different than the default models folder, which file you should update?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.model.answer14 );
                    expect( result ).toBe ( true );
                });
    
            });
        }
        
        
    }
