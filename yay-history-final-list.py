import re

with open("yay-installed-history.dump", "r") as file:
    installed = file.read().split('\n')

with open("yay-uninstalled-history.dump", "r") as file:
    uninstalled = file.read().split('\n')


installed_parsed = []
for i, entry in enumerate(installed):
    packages = entry[entry.find('-S ')+3:].split(' ')
    for i in range(len(packages)):
        packages[i] = re.sub('[^0-9a-zA-z -]', '', packages[i])
    installed_parsed += packages

uninstalled_parsed = []
for i, entry in enumerate(uninstalled):
    packages = entry[entry.find('-R ')+3:].split(' ')
    for i in range(len(packages)):
        packages[i] = re.sub('[^0-9a-zA-z -]', '', packages[i])
    uninstalled_parsed += packages

packages_left = list(set(installed_parsed)-set(uninstalled_parsed))
packages_left = '\n'.join(sorted(packages_left))

with open("yay-user-installed-left.dump", "w") as file:
    file.write(packages_left)
