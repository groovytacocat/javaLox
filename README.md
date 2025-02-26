# CSCI 3230 Tree-Walk Interpreter
This repository contains all the code necessary to build/compile a Tree Walk Interpreter for the Lox programming language written in Java, a Makefile for building the project, a directory of test programs written in Lox, a script to automate testing said files, as well as the Final Report write up related to the assignment.

## Goal

Design/Implement a ***Scanner*** to ***lex*** the *Lox* language into ***lexemes***, which are then given a type for
***token*** generation. Once the ***Scanner*** is complete, a ***Parser*** using context-free grammars to recognize
token sequences and organize them into an ***Abstract Syntax Tree (AST)***. Lastly construct a ***Tree-Walk
Interpreter*** that uses the JVM to evaluate each node of the AST to execute small Lox programs. 

## How to Build/Deploy:

### Building with Make
1. Clone the repository: `git clone https://github.com/etsu-algorithms/tree-walk-interpreter-groovytacocat`
2. Install dependencies (openjdk and make) if not currently installed.
3. Run `make` while in the project root to compile/build the `.jar` executable
   * To compile and directly launch into a REPL session use `make run` instead


### Usage
Once compiled the executable can be used in 2 ways.
1. `java -jar lox.jar <lox file>` to execute programs/scripts written in Lox
2. `java -jar lox.jar` invoked alone will open the interactive REPL 

## Testing
Inside this repository there is a [tests](tests/) directory which contains a small sample of programs written in Lox to illustrate specific functionalities implemented by this Interpreter.

### Test Script Usage
Executing the `runTest.sh` script will prompt the user to choose if they wish for the formatted output to be printed to the screen or written to a `results.txt` file.
