#!/bin/bash

handle_error() {
    echo "FAILED: $1:$2, exit code $3"
    exit 1
}

function branchMenu() {
	echo srcBranch:$srcBranch
	if [ -n "$srcBranch" ]; then
		exit 0;
	fi

	function printBranchMenu() {
		echo "Selecteer de source-branch:"
		echo "m) master (volgende release)"
		echo "v) valuepack (volgende valuepack)"
		echo "a) acceptatie (acceptatie patch)"
		echo "p) patch (productie patch)"
	}
	printBranchMenu
	while :
	do
	    echo
		echo "Selecteer een optie [m,v,a,p]?"
		read CHOICE
	    case "$CHOICE" in
	        "m")
	            srcBranch="master"
	            break
	            ;;
	        "v")
	            srcBranch="valuepack"
	            break
	            ;;
	        "a")
	            srcBranch="acceptatie"
	            break
	            ;;
	        "p")
	            srcBranch="patch"
	            break
	            ;;
	    esac
	    echo "Ongeldige optie!"
	done
}

trap 'handle_error $0 $LINENO $?' ERR
