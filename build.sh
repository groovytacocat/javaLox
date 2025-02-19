#!/bin/bash

echo -e "Compiling project...\n"

javac --source-path com -d bin com/lox/*.java

echo "Compilation complete!"
