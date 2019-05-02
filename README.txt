This guideline is ONLY for CAV2019 Artifact Evaluation.
Virtual Machine : Ubuntu 64b
Username : cav
Password : ae





---< FIRST TIME INSTALL >---
This session shows how to install the tool.

=============================
     STEP 1 - Check Java
=============================
Ensure that Java has been installed.
If not, (For Ubuntu) type:
   apt-get install default-jdk

================================
     STEP 2 - Install FOADA
================================
To install the tool, type:
   cd Artifact
Then type (password probably required):
   sudo make install

=====================================
     STEP 3 - Check Installation
=====================================
To check whether FOADA has been successfully installed and all the solvers have been successfully integrated with JavaSMT, type:
   foada -c
***** Attention *****
In order to have the basic functionalities, the solver "Z3" must be successfully integrated with JavaSMT.
If "Z3" cannot be correctly integrated, please send an email (with screenshots) to:
   xux@univ-grenoble-alpes.fr





---< RUN THE TOOL >---
This session shows how to use the tool.

===================
     Help Menu
===================
To see the help menu, type:
   foada -h
Or type:
   foada --help

============================
     Emptiness Checking
============================
To check the emptiness of an input automaton, type:
   foada -e <input> <options>
Default option is "BFS" + "universally quantifying arguments".
Several options are available:
   -d : using DFS instead of BFS
   -o : finding occurrences of predicates instead of universally quantifying arguments
$ For example, for a given input file "abc.foada", check whether the automaton in the file is empty, we type:
   foada -e abc.foada

============================
     Inclusion Checking
============================
To check the inclusion between two input automata, type:
   foada -i <input1> <input2> <options>
Default option is "BFS" + "universally quantifying arguments".
Several options are available:
   -d : using DFS instead of BFS
   -o : finding occurrences of predicates instead of universally quantifying arguments
$ For example, for two given input files "a1.foada" and "a2.foada", check whether "a1" is included in "a2", we type:
   foada -i a1.foada a2.foada





---< REPRODUCE EXPERIMENTAL RESULTS >---
The tool uses third-party solvers (Z3, MATHSAT, etc.) to compute the interpolants (and it is heuristic). It can perform COMPLETELY DIFFERENT in different environments (different versions of solvers, different OS, ...).
For example, you can find out a counter-example for an emptiness checking within 2 seconds on MacOS, but on Ubuntu, it is possible that the program never terminates for the same input.
***** Attention *****
The experimental results of the paper are carried out on a MacOS x64 - 1.3 GHz Intel Core i5 - 8 GB 1867 MHz LPDDR3, using a tool version of October 2018 (the current tool version if the one of March 2019).

================
     Script
================
To reproduce a part of experimental results of the paper, type:
   bash ./reproduce.bash





---< UNINSTALL >---
This session shows how to uninstall the tool from the machine.

==================================
     STEP 1 - Uninstall FOADA
==================================
Ensure that you are in the folder "Artifact", where there is the "makefile".
To uninstall the tool, type (password probably required):
   sudo make uninstall

=======================================
     STEP 2 - Check Uninstallation
=======================================
To check whether FOADA has been successfully uninstalled, type:
   foada
If you can see an error message "command not found", then FOADA has been successfully uninstalled.