$(document).ready(function () {
    session = new QiSession();

    $('#page_empty').show();
    $('#page_1').hide();
    $('#page_2').hide();


    session.service("ALMemory").done(function(ALMemory) {

        ALMemory.subscriber("Example/Page0").done(function(subscriber) {

            subscriber.signal.connect(function() {
                $('#page_empty').show();
                $('#page_1').hide();
                $('#page_joke_question').hide();
            });
        });


        ALMemory.subscriber("Example/Page1").done(function(subscriber) {

            subscriber.signal.connect(function() {
                $('#page_1').show();
                $('#page_empty').hide();
                $('#page_joke_question').hide();

            });
        });

        ALMemory.subscriber("Joke/Question").done(function(subscriber) {

            subscriber.signal.connect(function(data) {
                $('#page_joke').show();
                $('#page_empty').hide();
                $('#page_1').hide();

                $('#joke_answer').html("");
                $('#joke_question').html(data);
            });
        });

        ALMemory.subscriber("Joke/Answer").done(function(subscriber) {

            subscriber.signal.connect(function(data) {
                $('#page_joke').show();
                $('#page_empty').hide();
                $('#page_1').hide();

                $('#joke_answer').html(data);
            });
        });
    });

    function raise(event, value) {
        session.service("ALMemory").done(function(ALMemory) {
            ALMemory.raiseEvent(event, value);
        });
    }

    $('#page_1_1').on('click', function() {
        console.log("click 1");
        raise('Example/Button1', 1)
    });

});
