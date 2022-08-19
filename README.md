# Smalltalk-80 Sources

This repository contains the original source code of the Smalltalk-80 system as of 1983.

The information is presented hierarchically by category and class.

For each class there is a `CLASSNAME.stClass` with the entire source for that class in it as well as a `CLASSNAME.json` which describes the class itself (with superclass and instance, class, and pool variables).

The class comment is also provided in a separate file.

Below each class, there are `class` and `instance` directories with methods for those sides of each class.  The methods are contained in directories named for their protocols.

Each method is then contained in a file specified by its selector.

Due to limitations of filenames, forward slashes have been changed to `SLASH` in filenames.
