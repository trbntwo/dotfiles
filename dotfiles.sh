#!/usr/bin/bash

case $1 in
	"")
		echo "error: no argument was provided"
		;;
	setup)
		case $2 in
		"")
			echo "error: no option was provided"
			;;
		-c | --client)
			git switch client
			source ./scripts/setup.sh
			;;
        -s | --server)
			echo "not yet implemented"
			;;
		-d | --dev-container)
			echo "not yet implemented"
			;;
        -* | --*)
            echo "error: $2 isn't a valid option"
			;;
		*)
			echo "error: $2 is an argument, and only options are allowed"
    	esac
		;;
	reset)
		case $2 in
		"")
			echo "error: no option was provided"
			;;
		-c | --client)
			git switch client
			source ./scripts/reset.sh
			;;
        -s | --server)
			echo "not yet implemented"
			;;
		-d | --dev-container)
			echo "not yet implemented"
			;;
        -* | --*)
            echo "error: $2 isn't a valid option"
			;;
		*)
			echo "error: $2 is an argument, and only options are allowed"
    	esac
		;;
	-* | --*)
		echo "error: $1 is a option, and only arguments are allowed"
		;;
	*)
		echo "error: $1 isn't a valid argument"
esac
