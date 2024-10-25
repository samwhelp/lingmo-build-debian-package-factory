

################################################################################
### Head: Master / Sys / Recipe
##


sys_recipe () {

	local delegate="${1}"

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_recipe"
	util_error_echo "##"
	util_error_echo

	util_error_echo
	util_error_echo ${delegate}
	util_error_echo
	${delegate}


	return 0

}


##
### Tail: Master / Sys / Recipe
################################################################################
