#!/bin/bash

if [[ ! -d "boiler" ]]; then
	echo "Building GenerateAST executable..."
	javac --source-path com -d boiler com/tool/GenerateAst.java
fi

echo "Executing boiler... Creating Expr.java in current directory"
java -cp boiler com.tool.GenerateAst .
