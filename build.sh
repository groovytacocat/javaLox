#!/bin/bash

echo -e "Compiling project...\n"

javac --source-path com -d out com/lox/*.java

echo "Compilation complete!"
