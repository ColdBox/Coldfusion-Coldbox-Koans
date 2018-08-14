
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
            describe( "Interceptor Basic Test", function(){
    
                beforeEach(function( currentSpec ){
                    setup();
                    answersService = getInstance( "Answers" );
                    answers = answersService.init();
                });
                
                // Question # 1
                it( "Coldbox gives you PRE, POST and {youranswer} methods for action interceptions", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer1 );
                    expect( result ).toBe ( true );
                });

                 // Question # 2
                 it( "What is the name of the structure used to register interceptors in the ColdBox.cfc?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer2 );
                    expect( result ).toBe ( true );
                });

                 // Question # 3
                 it( "What is the name of the key to give an interceptor a name in the registration?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer3 );
                    expect( result ).toBe ( true );
                });

                 // Question # 4
                 it( "What is the default method to configure an interceptor?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer4 );
                    expect( result ).toBe ( true );
                });

                 // Question # 5
                 it( "What is the name of the key to configure an interceptor with custom properties?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer5 );
                    expect( result ).toBe ( true );
                });

                 // Question # 6
                 it( "An interceptor can only listen to ColdBox events True/False?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer6 );
                    expect( result ).toBe ( true );
                });

                 // Question # 7
                 it( "If you want to listen to the preProcess event, you will create a method called _____ in the interceptor?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer7 );
                    expect( result ).toBe ( true );
                });

                 // Question # 8
                 it( "What are the arguments that an interceptor receives in ColdBox 5?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer8 );
                    expect( result ).toBe ( true );
                });

                 // Question # 9
                 it( "What argument do you use in an interception method to elegantly produce output?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer9 );
                    expect( result ).toBe ( true );
                });

                 // Question # 10
                 it( "What is the default return type for an interception method?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer10 );
                    expect( result ).toBe ( true );
                });

                 // Question # 11
                 it( "Can multiple interceptors listen to an event True/false?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer11 );
                    expect( result ).toBe ( true );
                });

                 // Question # 12
                 it( "If you return true from an interceptor, the interception chain is broken, True/false?", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer12 );
                    expect( result ).toBe ( true );
                });

                // Question # 13
                it( "What method do you use to announce an interception", function(){
                    var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.interceptors.answer13 );
                    expect( result ).toBe ( true );
                });
  
    
            });
        }
        
        
    }


