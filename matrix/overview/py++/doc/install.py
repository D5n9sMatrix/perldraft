#!/usr/bin/python

def doc(self, install="'com.intellij.modules.python-core-capable'"):
    if install is True:
       return install
    else:
       yield install


