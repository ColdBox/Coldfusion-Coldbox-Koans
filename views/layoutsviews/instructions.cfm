<cfoutput>

    <h1 class="text-center">Layouts and Views Koans</h1>
    
    <div class="row well">
        <div class="col-md-12">
            <p>
                All of the Layouts and Views Tests are located in the <code>tests/specs/integration/layoutsviews/</code> folder.
                You must open each of the Test CFC files, read the instructions for each of the tests, and either change the assertion (for the simpler koans), or modify the Coldbox App itself, to make the assertions true (for more complex koans).
                For example, a simple koan, might look like this:<br>
                You must enter the name of the default implicit action for a controller?<br>
                var result = answersService.compareAnswers( "YOUR_ANSWER_GOES_HERE", answers.layoutsviews.answer1 );<br>
                To make this pass, you would need to change the string "YOUR_ANSWER_GOES_HERE" for your answer.
            </p>
        </div>
    </div>
    
    <div class="row well">
        <h2 class="text-center">Run tests</h2>
        <br>
        <div class="col-md-4 text-center">
            <a class="btn btn-info" href="#event.getSESBaseURL()#tests/specs/integration/layoutsviews/BasicTest.cfc">Basic test</a>
        </div>
        <div class="col-md-4 text-center">
            <a class="btn btn-info" href="#event.getSESBaseURL()#tests/specs/integration/layoutsviews/AdvancedTest.cfc">Advanced test</a>
        </div>
        <div class="col-md-4 text-center">
            <a class="btn btn-info" href="#event.getSESBaseURL()#tests/specs/integration/layoutsviews/ExpertTest.cfc">Expert test</a>
        </div>
    </div>
    
    
    <h3>Online Resources to Help you Complete the Layout Views Koans</h3>
    <ul>
        <li>ColdBox Book - <a href="https://coldbox.ortusbooks.com/the-basics/layouts-and-views" target="_blank">Layouts and Views</a></li>
    </ul>
    
</cfoutput>