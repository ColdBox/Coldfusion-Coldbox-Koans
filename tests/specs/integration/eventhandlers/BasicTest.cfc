
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
        describe( "Event handlers Basic Test", function(){

            beforeEach(function( currentSpec ){
                setup();
                answersService = getInstance( "Answers" );
                answers = answersService.init();
            });
            
            // Question # 1
            it( "An event handler in ColdBox stands for what in the MVC pattern?", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer1 );
                expect( result ).toBe ( true );
            });

            // Question # 2
            it( "If you return a string from a handler, what is the rendering type (XML, JSON, PDF or HTML)", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer2 );
                expect( result ).toBe ( true );
            });

            // Question # 3
            it( "What is the default rendering type (XML, JSON, PDF or HTML ) if you return a complex object from a handler", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer3 );
                expect( result ).toBe ( true );
            });
            
            // Question # 4
            it( "You must enter the name of the default implicit action for a handler", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer4 );
                expect( result ).toBe ( true );
            });

            // Question # 5
            it( "What Syntax would you use to call the USERS handler with the LIST action", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer5 );
                expect( result ).toBe ( true );
            });

            // Question # 6
            it( "What event is index.cfm/team/list calling?", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer6 );
                expect( result ).toBe ( true );
            });

            // Question # 7
            it( "For example, if you go to index.cfm, what event is implicitly called", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer7 );
                expect( result ).toBe ( true );
            });

            // Question # 8
            it( "Name of the setting required to change the default event for your application", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer8 );
                expect( result ).toBe ( true );
            });

            // Question # 9
            it( "What 3 arguments do every action in your Event Handler Receive - Hint comma separated, no spaces", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer9 );
                expect( result ).toBe ( true );
            });

            // Question # 10
            it( "Private methods can only be called inside the application using what method, which comes from the Supertype?", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer10 );
                expect( result ).toBe ( true );
            });

            // Question # 11
            it( "By Default, Handler Caching is ON/OFF", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer11 );
                expect( result ).toBe ( true );
            });

            // Question # 12
            it( "If you wanted to run an action before  all of the handlers actions / methods, what action/method would you create", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer12 );
                expect( result ).toBe ( true );
            });

            // Question # 13
            it( "What annotation can you use a part from the handler property, to limit an action's HTTP method execution", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer13 );
                expect( result ).toBe ( true );
            });

            // Question # 14
            it( "What setting is used to activate event caching?", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer14 );
                expect( result ).toBe ( true );
            });

        });
    }
    
    
}
