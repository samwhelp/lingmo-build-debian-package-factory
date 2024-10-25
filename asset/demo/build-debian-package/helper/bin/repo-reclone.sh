#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
THE_INIT_DIR_PATH="${THE_BASE_DIR_PATH}/../ext"
. "${THE_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Portal / repo_reclone
##

portal_repo_reclone () {

	util_error_echo 'portal_repo_reclone'


	mod_repo_reclone

	mod_main_signal_bind


	return 0

}

##
### Tail: Portal / repo_reclone
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_repo_reclone "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
