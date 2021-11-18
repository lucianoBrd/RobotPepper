#!/usr/bin/env python
# -*- coding: utf-8 -*-

# ssh nao@pepper01
# export PYTHONPATH=${PYTHONPATH}:/softwares/INFO/Pepper/pynaoqi-python2.7-2.5.5.5-linux64/lib/python2.7/site-packages
# run with python 03_...py --qi-url="tcp://ip_robot:9559"

import qi
import requests

class JokeModule:
    """
    Wow, there should be some doc here too
    """
    def __init__(self, session):
        """
        """
        print "MyModule init"
        self.session = session
        self.memory = self.session.service("ALMemory")

        self.url = "https://blague.xyz/api/joke/random"

    def __del__(self):
        """
        """
        pass


    def print_joke(self):
        """
        """
        info = requests.get(self.url)

        info_json = info.json()
        print "info_json: %s" % info_json

    def get_joke(self):
        """
        **return (string) :**
           * joke
        """
        info = requests.get(self.url)

        info_json = info.json()
        main_info = info_json["joke"]["question"] + "/" + info_json["joke"]["answer"]
        print "main_info: %s" % main_info

        return main_info


def main():
    """
    I should put some doc here
    """

    app = qi.Application(url="tcp://134.214.50.49:9559")
    app.start()

    s = app.session
    my_module = JokeModule(s)
    s.registerService("Joke", my_module)

    app.run()



if __name__ == "__main__":
    main()
