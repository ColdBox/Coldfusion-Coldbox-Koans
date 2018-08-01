
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
			describe( "Layouts and views Basic Test", function(){
	
				beforeEach(function( currentSpec ){
					setup();
					answersService = getInstance( "Answers" );
					answers = answersService.init();
				});
				
				// Question # 1
				it( "Can give me the name of the folder by convention for the Coldfusion views", function(){
					// What Folder by Convention holds all of your Coldfusion View Files? 
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer1 );
					expect( result ).toBe ( true );
				});

				// Question # 2
				it( "Can give me the name of the folder by convention for the layout files", function(){
					// What Folder by Convention holds all of your Coldfusion Layout Files?
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer2 );
					expect( result ).toBe ( true );
				});

				// Question # 3
				it( "Can give me the name of the folder by convention for the layout files", function(){
					// What Folder by Convention holds all of your Coldfusion Model Files
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer3 );
					expect( result ).toBe ( true );
				});

				// Question # 4
				it( "Can give me the name of the method/function to relocate in Coldbox 5", function(){
					// What method do you call to relocate to another view in ColdBox 5 - Hint: event.setNextEvent() method has been deprecated
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer4 );
					expect( result ).toBe ( true );
				});

				// Question # 5
				it( "Can give me the name of the method/function to use a different layout from the default", function(){
					// What method do you call to use a different layout from the default - Hint event.{Youranswer}()
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer5 );
					expect( result ).toBe ( true );
				});

				// Question # 6
				it( "Can tell me if a layout can be set by calling the method event.setView", function(){
					// Can you Use event.setView to change a layout? Hint yes or no
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer6 );
					expect( result ).toBe ( true );
				});

				// Question # 7
				it( "Can tell me if the event.setView method can be used to change View Cache Settings", function(){
					// Can you Use event.setView to Change View Cache Settings? Hint yes or no
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer7 );
					expect( result ).toBe ( true );
				});

				// Question # 8
				it( "Can tell me if the event.setLayout method can be used to change View Cache Settings", function(){
					// Can you Use event.setLayout to Change Layout Cache Settings? Hint yes or no
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer8 );
					expect( result ).toBe ( true );
				});

				// Question # 9
				it( "Can give me the name of the method to render nothing", function(){
					// What object/method do you use to render nothing - Hint event.{youranswer}()
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer9 );
					expect( result ).toBe ( true );
				});

				// Question # 10
				it( "Can give me the name of the structure you can use to create and pass data when rendering a view and make it local for just that view", function(){
					// What is the name of the structure you can create and pass when rendering a View to create Local Variables for just that view?
					var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsViews.answer10 );
					expect( result ).toBe ( true );
				});
				
			});
		}
		
}
	