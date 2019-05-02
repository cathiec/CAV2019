This guideline is ONLY for CAV2019 Artifact Evaluation.
Virtual Machine : Ubuntu 64b
Username : can
Password : ae





---< FIRST INSTALLATION >---
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
Install the tool.
Type:
   cd Artifact
Then type:
   sudo make install

=====================================
     STEP 3 - Check Installation
=====================================
Check whether FOADA is successfully installed and all the solvers are successfully integrated with JavaSMT.
Type:
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
For example, you can have a counter-example for an emptiness checking within 2 seconds on MacOS, but on Ubuntu, it is possible that the program never terminates for the same input.
***** Attention *****
Although the computation of interpolants is heuristic and the solvers can perform differently in different environments, for the same input you will NEVER get an "empty" in one environment but a "non-empty (counter-example)" in another environment. Hence, if the program terminates, then we ensure the correctness of the result.


