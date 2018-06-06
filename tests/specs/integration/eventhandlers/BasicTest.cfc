
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
            

            it( "What is the name used for handler outside of Coldbox", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer1 );
                expect( result ).toBe ( true );
            });

            it( "You must enter the name of the default implicit action for a handler", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer2 );
                expect( result ).toBe ( true );
            });

            it( "What Syntax would you use to call the USERS handler with the LIST action", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer3 );
                expect( result ).toBe ( true );
            });
            it( "What event is index.cfm/team/list calling?", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer4 );
                expect( result ).toBe ( true );
            });
            it( "For example, if you go to index.cfm, what event is implicitly called", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer5 );
                expect( result ).toBe ( true );
            });
            it( "Name of the setting required to change the base event for your application", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer6 );
                expect( result ).toBe ( true );
            });
            it( "What 3 arguments do every action in your Event Handler Receive - Hint comma separated, no spaces", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer7 );
                expect( result ).toBe ( true );
            });
            it( "Private methods can only be called inside the application using what method name?", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer8 );
                expect( result ).toBe ( true );
            });
            it( "By Default, Handler Caching is ON/OFF", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer9 );
                expect( result ).toBe ( true );
            });
            it( "To set caching at the component declaration, what would you add to your declaration - component {youranswer} {} - Hint - xxxxx=yyyyy no spaces and no quotes", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer10 );
                expect( result ).toBe ( true );
            });
            it( "What structure would you add to your handler to restrict HTTP methods to given actions", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer11 );
                expect( result ).toBe ( true );
            });
            it( "Coldbox gives you PRE, POST and {youranswer} methods", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer12 );
                expect( result ).toBe ( true );
            });
            it( "If you wanted to run an action before  all of the handlers actions / methods, what action/method would you create", function(){
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.eventHandlers.answer13 );
                expect( result ).toBe ( true );
            });

        });
    }
    
    
}
