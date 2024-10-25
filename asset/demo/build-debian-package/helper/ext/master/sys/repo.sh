

################################################################################
### Head: Master / Sys / Repo
##


sys_repo_clone () {

	local target_url="${1}"
	local target_path="${2}"
	local target_branch="${3}"
	local is_use_branch="${4}"


	if [ -e "${target_path}" ]; then

		util_error_echo
		util_error_echo "##"
		util_error_echo "## ## clone_repo_exists: ${target_path}"
		util_error_echo "##"
		util_error_echo

		return 0

	fi


	if [[ "${is_use_branch}" == "true" ]]; then

		util_error_echo
		util_error_echo git clone --recursive -b "${target_branch}" "${target_url}" "${target_path}"
		util_error_echo
		git clone --recursive -b "${target_branch}" "${target_url}" "${target_path}"

	else
		util_error_echo
		util_error_echo git clone --recursive "${target_url}" "${target_path}"
		util_error_echo
		git clone --recursive "${target_url}" "${target_path}"

	fi


	return 0

}


sys_repo_reclone () {

	local target_url="${1}"
	local target_path="${2}"
	local target_branch="${3}"
	local is_use_branch="${4}"


	if [ -e "${target_path}" ]; then

		util_error_echo
		util_error_echo "##"
		util_error_echo "## ## clone_repo_exists: ${target_path}"
		util_error_echo "##"
		util_error_echo

		util_error_echo
		util_error_echo "##"
		util_error_echo "## ## remove_repo: ${target_path}"
		util_error_echo "##"
		util_error_echo

		rm -rf "${target_path}"

	fi


	sys_repo_clone "${target_url}" "${target_path}" "${target_branch}" "${is_use_branch}"


	return 0

}


##
### Tail: Master / Sys / Repo
################################################################################
