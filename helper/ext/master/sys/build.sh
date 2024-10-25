

################################################################################
### Head: Master / Sys / Build
##


sys_build () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_build"
	util_error_echo "##"
	util_error_echo


	return 0

}


sys_build_dep () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_build_dep"
	util_error_echo "##"
	util_error_echo


	return 0

}


sys_build_essential () {

	local pakcage_list="${1}"

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_build_essential"
	util_error_echo "##"
	util_error_echo

	util_error_echo
	util_error_echo sudo apt-get install ${pakcage_list}
	util_error_echo
	sudo apt-get install ${pakcage_list}


	util_error_echo


	return 0

}


##
### Tail: Master / Sys / Build
################################################################################
