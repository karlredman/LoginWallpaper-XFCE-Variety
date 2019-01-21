#!/usr/bin/python

import sys
import os
import random

def adddir(d):
        "add a dir to the list and recurse on its subdirs"

        list=os.listdir(d)
        for i in list:
                path=d + "/" + i
                list[list.index(i)] = path
                if i[0] == '.':
                        list.remove(path)
                else:
                        if os.path.isdir(path):
                                list.remove(path)
                                list = list + adddir(path)
        return list

if len(sys.argv) == 1:
        list=adddir(".")
else:
        list=adddir(sys.argv[1])
listlen=len(list);
print list[random.randint(0,listlen-1)]   
