
/**
* My Hint
*/
component{
    
    /**
    * Constructor
    */
    any function init() {

        // Do you really want to learn? Please do not cheat, read the documentation instead :)
        var answers = {
            eventHandlers = {
                answer1  = "controller",
                answer2  = "index",
                answer3  = "users.list",
                answer4  = "team.list",
                answer5  = "main.index",
                answer6  = "DefaultEvent",
                answer7  = "event,rc,prc",
                answer8  = "runevent",
                answer9  = "on",
                answer10 = "cache=false",
                answer11 = "this.allowedMethods",
                answer12 = "around",
                answer13 = "prehandler"
            },
            layoutsViews = {
                answer1  = "views",
                answer2  = "layouts",
                answer3  = "models",
                answer4  = "relocate",
                answer5  = "setlayout",
                answer6  = "yes",
                answer7  = "yes",
                answer8  = "no",
                answer9  = "norender",
                answer10 = "args"
            }
        }

        return answers;

    }

    
    /**
    * compareAnswers
    */
    function compareAnswers( required string userAnswer, required string correctAnswer ) {
        var isCorrect = false;

        if( arguments.userAnswer eq arguments.correctAnswer )
            return true;
            
        return isCorrect;

    }
    
}
