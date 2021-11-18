$(document).ready(function () {
    session = new QiSession();

    $('#home').show();
    $('#hello').hide();
    $('#page_joke').hide();
    $('#joke').hide();


    session.service("ALMemory").done(function(ALMemory) {

        ALMemory.subscriber("Home").done(function(subscriber) {

            subscriber.signal.connect(function() {
                $('#home').show();
                $('#hello').hide();
                $('#joke').hide();
                $('#page_joke').hide();
            });
        });


        ALMemory.subscriber("Hello").done(function(subscriber) {

            subscriber.signal.connect(function() {
                $('#hello').show();
                $('#home').hide();
                $('#joke').hide();
                $('#page_joke').hide();

            });
        });

        ALMemory.subscriber("Joke").done(function(subscriber) {

            subscriber.signal.connect(function() {
                $('#joke').show();
                $('#home').hide();
                $('#hello').hide();
                $('#page_joke').hide();

            });
        });

        ALMemory.subscriber("Joke/Question").done(function(subscriber) {

            subscriber.signal.connect(function(data) {
                $('#page_joke').show();
                $('#home').hide();
                $('#hello').hide();
                $('#joke').hide();

                $('#joke_answer').html("");
                $('#joke_question').html(data);
            });
        });

        ALMemory.subscriber("Joke/Answer").done(function(subscriber) {

            subscriber.signal.connect(function(data) {
                $('#page_joke').show();
                $('#home').hide();
                $('#hello').hide();
                $('#joke').hide();

                $('#joke_answer').html(data);
            });
        });
    });

    function raise(event, value) {
        session.service("ALMemory").done(function(ALMemory) {
            ALMemory.raiseEvent(event, value);
        });
    }

    $('#hello_button').on('click', function() {
        raise('Hello/Button', 1)
    });

    $('#joke_button').on('click', function() {
        raise('Joke/Button', 1)
    });

    $('#stop_button').on('click', function() {
        raise('Stop/Button', 1)
    });

});
