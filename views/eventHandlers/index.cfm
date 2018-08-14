<cfoutput>

    <h1 class="text-center">Event Handler Koans</h1>
    
    <div class="row well">
        <div class="col-md-12">
            <p>
                All of the Event Handler Koans are located in the <code>tests/specs/integration/eventhandlers/</code> folder.
                You must open each of the Test CFC files, read the instructions for each of the tests, and either change the expectation (for the simpler koans), or modify the Coldbox App itself, to make the tests pass (for more complex koans).
                For Example, a simple koan, might look like this.
                What is the name used for handler outside of Coldbox?  var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.basic.answer1 );
                To make this pass, you would need to change the string "YOUR_ANSWER_GOES_HERE" for your answer.
            </p>
        </div>
    </div>
    
    <div class="row well">
        <h2 class="text-center">Run tests</h2>
        <br>
        <div class="col-md-4 text-center">
            <a class="btn btn-info" href="#event.getSESBaseURL()#tests/specs/integration/eventhandlers/BasicTest.cfc">Basic test</a>
        </div>
        <div class="col-md-4 text-center">
            <a class="btn btn-info" href="#event.getSESBaseURL()#tests/specs/integration/eventhandlers/AdvancedTest.cfc">Advanced test</a>
        </div>
        <div class="col-md-4 text-center">
            <a class="btn btn-info" href="#event.getSESBaseURL()#tests/specs/integration/eventhandlers/ExpertTest.cfc">Expert test</a>
        </div>
    </div>
    
    
    <h3>Online Resources to Help you Complete the Event Handler Koans</h3>
    <ul>
        <li>ColdBox Book - <a href="https://coldbox.ortusbooks.com/the-basics/event-handlers" target="_blank">Event Handlers</a></li>
        
    </ul>
    
    </cfoutput>