

################################################################################
### Head: Master / Sys / Build
##


sys_build () {

	local target_path="${1}"


	if ! [ -d "${target_path}" ]; then

		util_error_echo
		util_error_echo "##"
		util_error_echo "## ## build_repo_not_exists: ${target_path}"
		util_error_echo "##"
		util_error_echo

		return 0

	fi




	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_build"
	util_error_echo "##"
	util_error_echo




	util_error_echo
	util_error_echo cd "${target_path}"
	util_error_echo
	cd "${target_path}"


	util_error_echo
	util_error_echo dpkg-buildpackage -b -uc -us -tc -j$(nproc)
	util_error_echo
	dpkg-buildpackage -b -uc -us -tc -j$(nproc)


	util_error_echo
	util_error_echo cd "${OLDPWD}"
	util_error_echo
	cd "${OLDPWD}"


	return 0

}


sys_build_dep () {

	local target_path="${1}"


	if ! [ -d "${target_path}" ]; then

		util_error_echo
		util_error_echo "##"
		util_error_echo "## ## build_repo_not_exists: ${target_path}"
		util_error_echo "##"
		util_error_echo

		return 0

	fi




	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_build_dep"
	util_error_echo "##"
	util_error_echo




	util_error_echo
	util_error_echo cd "${target_path}"
	util_error_echo
	cd "${target_path}"


	util_error_echo
	util_error_echo sudo mk-build-deps -i -t "apt-get -y" -r
	util_error_echo
	sudo mk-build-deps -i -t "apt-get -y" -r


	util_error_echo
	util_error_echo cd "${OLDPWD}"
	util_error_echo
	cd "${OLDPWD}"


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
