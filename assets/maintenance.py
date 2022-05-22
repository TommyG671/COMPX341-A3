
import os

nameID = "//Name: Thomas Griffin. ID: 1539604\n"

for folder, dirs, files in os.walk('./src'):
    for filename in files:
        if filename.endswith(".ts"):
            with open(os.path.join(folder, filename), 'r+', encoding='utf-8') as f:
                text = f
                topLine = f.readline()
                if topLine != nameID:
                    file = f.read()
                    f.seek(0, 0)
                    f.write(nameID.rstrip('\r\n') + '\n' + file)
