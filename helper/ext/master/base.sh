

################################################################################
### Head: Master / Base
##

master_var_init () {


	##
	## ## Build Args
	##

	REF_BUILD_PRJ_NAME="${_Conf_Repo_Name_}"

	REF_BUILD_REPO_CLONE_URI="${_Conf_Repo_Repository_}"

	REF_BUILD_REPO_CLONE_BRANCH="${_Conf_Repo_Tag_}"


	if [ -z "${REF_BUILD_REPO_CLONE_BRANCH}" ]; then

		REF_BUILD_REPO_CLONE_USE_BRANCH="false"

	else

		REF_BUILD_REPO_CLONE_USE_BRANCH="true"

	fi


	REF_BUILD_ESSENTIAL_PACKAGES="${_Conf_Build_Essential_Packages_}"

	if [ -z "${REF_BUILD_ESSENTIAL_PACKAGES}" ]; then

		REF_BUILD_ESSENTIAL_PACKAGES="git devscripts equivs"

	fi



	##
	## ## Build Path
	##

	REF_BUILD_TMP_DIR_PATH="${THE_MASTER_TMP_DIR_PATH}"


	##
	## ## Build Path / Sub
	##

	REF_BUILD_PLAN_DIR_PATH="${REF_BUILD_TMP_DIR_PATH}/${REF_BUILD_PRJ_NAME}"

	REF_BUILD_PLAN_SRC_DIR_NAME="src"
	REF_BUILD_PLAN_SRC_DIR_PATH="${REF_BUILD_PLAN_DIR_PATH}/${REF_BUILD_PLAN_SRC_DIR_NAME}"

	REF_BUILD_PLAN_DIST_DIR_NAME="dist"
	REF_BUILD_PLAN_DIST_DIR_PATH="${REF_BUILD_PLAN_DIR_PATH}/${REF_BUILD_PLAN_DIST_DIR_NAME}"


	REF_BUILD_PRJ_DIR_PATH="${REF_BUILD_PLAN_SRC_DIR_PATH}/${REF_BUILD_PRJ_NAME}"



	return 0

}


master_var_dump () {

	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: master_var_dump"
	util_debug_echo "##"
	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Config"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "_Conf_Repo_Name_=${_Conf_Repo_Name_}"
	util_debug_echo "_Conf_Repo_Repository_=${_Conf_Repo_Repository_}"
	util_debug_echo "_Conf_Repo_Tag_=${_Conf_Repo_Tag_}"

	util_debug_echo "_Conf_Build_Type_=${_Conf_Build_Type_}"
	util_debug_echo "_Conf_Build_Essential_Packages_=${_Conf_Build_Essential_Packages_}"

	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Build"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "REF_BUILD_PRJ_NAME=${REF_BUILD_PRJ_NAME}"
	util_debug_echo "REF_BUILD_REPO_CLONE_URI=${REF_BUILD_REPO_CLONE_URI}"
	util_debug_echo "REF_BUILD_REPO_CLONE_BRANCH=${REF_BUILD_REPO_CLONE_BRANCH}"
	util_debug_echo "REF_BUILD_REPO_CLONE_USE_BRANCH=${REF_BUILD_REPO_CLONE_USE_BRANCH}"
	util_debug_echo "REF_BUILD_ESSENTIAL_PACKAGES=${REF_BUILD_ESSENTIAL_PACKAGES}"




	util_debug_echo "REF_BUILD_TMP_DIR_PATH=${REF_BUILD_TMP_DIR_PATH}"

	util_debug_echo "REF_BUILD_PLAN_DIR_PATH=${REF_BUILD_PLAN_DIR_PATH}"

	util_debug_echo "REF_BUILD_PLAN_SRC_DIR_NAME=${REF_BUILD_PLAN_SRC_DIR_NAME}"
	util_debug_echo "REF_BUILD_PLAN_SRC_DIR_PATH=${REF_BUILD_PLAN_SRC_DIR_PATH}"

	util_debug_echo "REF_BUILD_PLAN_DIST_DIR_NAME=${REF_BUILD_PLAN_DIST_DIR_NAME}"
	util_debug_echo "REF_BUILD_PLAN_DIST_DIR_PATH=${REF_BUILD_PLAN_DIST_DIR_PATH}"

	util_debug_echo "REF_BUILD_PRJ_DIR_PATH=${REF_BUILD_PRJ_DIR_PATH}"


	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: master_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}


##
### Tail: Master / Base
################################################################################
