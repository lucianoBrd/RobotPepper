<?xml version="1.0" encoding="UTF-8" ?>
<Package name="cpe_app_3" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="jokeQuestion" src="jokeQuestion/jokeQuestion.dlg" />
        <Dialog name="jokeAnswer" src="jokeAnswer/jokeAnswer.dlg" />
        <Dialog name="salutation" src="salutation/salutation.dlg" />
        <Dialog name="joke" src="joke/joke.dlg" />
        <Dialog name="stop" src="stop/stop.dlg" />
    </Dialogs>
    <Resources>
        <File name="index" src="html/index.html" />
        <File name="jquery-1.11.2.min" src="html/jquery-1.11.2.min.js" />
        <File name="sample" src="html/js/sample.js" />
        <File name="sample" src="html/js/sample.js~" />
        <File name="index" src="html/index.html~" />
        <File name="music_all" src="sounds/music_all.ogg" />
        <File name="api_joke" src="scripts/api_joke.py" />
        <File name="Algorithme" src="Algorithme.PNG" />
        <File name="aou" src="sounds/aou.ogg" />
        <File name="quoi" src="sounds/quoi.ogg" />
        <File name="readme" src="readme.md" />
    </Resources>
    <Topics>
        <Topic name="jokeQuestion_frf" src="jokeQuestion/jokeQuestion_frf.top" topicName="jokeQuestion" language="fr_FR" />
        <Topic name="jokeAnswer_frf" src="jokeAnswer/jokeAnswer_frf.top" topicName="jokeAnswer" language="fr_FR" />
        <Topic name="salutation_frf" src="salutation/salutation_frf.top" topicName="salutation" language="fr_FR" />
        <Topic name="joke_frf" src="joke/joke_frf.top" topicName="joke" language="fr_FR" />
        <Topic name="stop_frf" src="stop/stop_frf.top" topicName="stop" language="fr_FR" />
    </Topics>
    <IgnoredPaths />
    <Translations auto-fill="fr_FR">
        <Translation name="translation_fr_FR" src="translations/translation_fr_FR.ts" language="fr_FR" />
    </Translations>
</Package>
