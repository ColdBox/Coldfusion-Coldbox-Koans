
/**
* This is my model
*/
component{
    
    /**
    * Constructor
    */
    any function init() {

        // Do you really want to learn? Please do not cheat, read the documentation instead :)
        var answers = {
            model = {
                answer1 = "service",
                answer2 = "singleton",
                answer3 = "false",
                answer4  = "wirebox",
                answer5  = "onDIComplete",
                answer6  = "property",
                answer7  = "inject",
                answer8  = "variables",
                answer9  = "populateModel",
                answer10 = "json,query,rc,struct,xml",
                answer11 = "getInstance",
                answer12 = "accessors",
                answer13 = "wirebox.singletonReload",
                answer14 = "WireBox.cfc"
            },
            eventHandlers = {
                answer1  = "controller",
                answer2  = "HTML",
                answer3  = "JSON",
                answer4  = "index",
                answer5  = "users.list",
                answer6  = "team.list",
                answer7  = "main.index",
                answer8  = "DefaultEvent",
                answer9  = "event,rc,prc",
                answer10  = "runevent",
                answer11  = "on",
                answer12  = "allowedMethods",
                answer13  = "prehandler",
                answer14  = "coldbox.eventCaching"
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
            },
            interceptors = {
                answer1  = "around",
                answer2  = "interceptors",
                answer3  = "name",
                answer4  = "configure",
                answer5  = "interceptorSettings",
                answer6  = "false",
                answer7  = "customInterceptionPoints",
                answer8  = "event,interceptData,buffer,rc,prc",
                answer9  = "buffer",
                answer10 = "boolean",
                answer11 = "true",
                answer12 = "true",
                answer13 = "announceInterception"

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
