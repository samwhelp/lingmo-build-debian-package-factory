

################################################################################
### Head: Master / Mod / Build
##


mod_prepare () {

	sys_prepare "${REF_BUILD_PRJ_DIR_PATH}"

	return 0

}


mod_prepare_dep () {

	sys_prepare_dep "${REF_BUILD_PRJ_DIR_PATH}"

	return 0

}


mod_prepare_essential () {

	sys_prepare_essential "${REF_BUILD_ESSENTIAL_PACKAGES}"

	return 0

}


##
### Tail: Master / Mod / Build
################################################################################
