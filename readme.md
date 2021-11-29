# Projet Pepper - 5IRC

* Aykel Cheniour
* Lucien Burdet

## Vidéo
- https://youtu.be/Nv9qDqoH9XM
- https://youtu.be/8IebyIv7y70

## Procédure de lancement 

Avant de lancer le projet sur le robot, il faut d'abord lancer le service permettant de requêter l'API de blague.
Pour ce faire, vous devez vous connecter au robot en ssh (```ssh nao@pepper01```) afin de récupérer son addresse IP dans le but de la mettre dans le fichier ```scripts/api_joke.py```, ligne 57 (```app = qi.Application(url="tcp://134.214.50.49:9559"```)).
```
export PYTHONPATH=${PYTHONPATH}:/softwares/INFO/Pepper/pynaoqi-python2.7-2.5.5.5-linux64/lib/python2.7/site-packages
python2 scripts/api_joke.py
```

Une fois le service lancé, vous pouvez lancer le progamme sur le robot avec l'application Choregraphe.

## Partie éthique

Nous avons essayé de respecter l'éthique avec le robot Pepper. 
En effet, notre solution permet au robot d'accueillir et de raconter des blagues en tous genres. Le robot parle et ce qu'il dit est également écrit sur la tablette, ce qui permet aux personnes mal entendente se pouvoir profiter de ces services. De plus, le robot peut reconnaitre la voix, mais il est également possible d'appuyer sur la tablette pour effectuer les mêmes actions. De ce fait, les personnes ne pouvant pas parler ne sont pas discriminées.

En revanche, notre robot peut également effectuer des fonctionnalités cachées d'humour, en touchant sa tête, ou ses mains par exemple. Mais, les personnes en situation d'handicap ne peuvent pas profiter de ces fonctionnalités. Une question d'Hétique peut alors être soulevée.

De plus, le robot prend une photo après avoir raconté sa blague afin de l'afficher sur la tablette. Il fait cela sans le consentement de l'utilisateur. En outre, aux vues du niveau de sécurité médiocre du robot, une personne mal intentionnée pourrait récupérer ces photos. Les photos pourraient être utilisés à des fin malintentionnées par rapport à l'utilisateur. 
Enfin, le robot pourrait capturer des images ou même filmer en continu et donc l'utilisateur serait espionné à son insu.

De plus nous n'avons aucun contrôle sur les blagues récupérées sur l'API. Cela peut être un problème car le robot ne fait pas la différence entre un adulte ou un enfant et peut donc dire des choses inappropriées pour des enfants. L'utilisation du robot par des enfants pose donc un problème éthique notamment dans la protection des enfants à l'exposition de propos choquant.
