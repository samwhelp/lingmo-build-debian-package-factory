

################################################################################
### Head: Master / Mod / Repo
##


mod_repo_clone () {

	sys_repo_clone "${REF_BUILD_REPO_CLONE_URI}" "${REF_BUILD_PRJ_DIR_PATH}" "${REF_BUILD_REPO_CLONE_BRANCH}" "${REF_BUILD_REPO_CLONE_USE_BRANCH}"

	return 0

}


mod_repo_reclone () {

	sys_repo_reclone "${REF_BUILD_REPO_CLONE_URI}" "${REF_BUILD_PRJ_DIR_PATH}" "${REF_BUILD_REPO_CLONE_BRANCH}" "${REF_BUILD_REPO_CLONE_USE_BRANCH}"

	return 0

}


##
### Tail: Master / Mod / Repo
################################################################################
