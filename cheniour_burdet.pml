<?xml version="1.0" encoding="UTF-8" ?>
<Package name="cpe_app_3" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="phase1" src="phase1/phase1.dlg" />
    </Dialogs>
    <Resources>
        <File name="index" src="html/index.html" />
        <File name="jquery-1.11.2.min" src="html/jquery-1.11.2.min.js" />
        <File name="sample" src="html/js/sample.js" />
        <File name="sample" src="html/js/sample.js~" />
        <File name="index" src="html/index.html~" />
        <File name="01_script_hello" src="scripts/01_script_hello.py" />
        <File name="02_script_animated_speech" src="scripts/02_script_animated_speech.py" />
        <File name="03_script_my_module" src="scripts/03_script_my_module.py" />
        <File name="04_script_module_almemory_connect" src="scripts/04_script_module_almemory_connect.py" />
        <File name="05_script_module_web_api" src="scripts/05_script_module_web_api.py" />
        <File name="music_all" src="sounds/music_all.ogg" />
    </Resources>
    <Topics>
        <Topic name="phase1_enu" src="phase1/phase1_enu.top" topicName="phase1" language="en_US" />
        <Topic name="phase1_frf" src="phase1/phase1_frf.top" topicName="phase1" language="fr_FR" />
    </Topics>
    <IgnoredPaths>
        <Path src=".metadata" />
    </IgnoredPaths>
    <Translations auto-fill="fr_FR">
        <Translation name="translation_fr_FR" src="translations/translation_fr_FR.ts" language="fr_FR" />
    </Translations>
</Package>
