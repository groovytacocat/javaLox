#!/bin/bash

testFiles=($(ls ./tests))

run_test(){
for x in ${testFiles[@]}; do
	echo "Testing file: $x || $(grep -Eo "Desc.*" ./tests/$x)"
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - #StackOverflow provided this
	echo -e "Code: \n$(cat ./tests/$x | tail -n+2)"
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - #StackOverflow provided this
	echo "Output: "
	java -jar lox.jar ./tests/$x
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
	echo ""
done
}

main(){
	read -p "Enter '1' to print test output to console or '2' to write to results.txt: " choice

	if [[ "$choice" == "1" ]]; then
		run_test
	else 
		run_test > results.txt 2>&1
		echo "Tests completed"
	fi
}

main "$@"
