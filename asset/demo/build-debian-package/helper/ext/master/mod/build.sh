

################################################################################
### Head: Master / Mod / Build
##


mod_build () {

	sys_build "${REF_BUILD_PRJ_DIR_PATH}"

	return 0

}


mod_build_dep () {

	sys_build_dep "${REF_BUILD_PRJ_DIR_PATH}"

	return 0

}


mod_build_essential () {

	sys_build_essential "${REF_BUILD_ESSENTIAL_PACKAGES}"

	return 0

}


##
### Tail: Master / Mod / Build
################################################################################
