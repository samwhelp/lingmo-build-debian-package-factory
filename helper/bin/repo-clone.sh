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
### Head: Portal / repo_clone
##

portal_repo_clone () {

	util_error_echo 'portal_repo_clone'


	mod_repo_clone

	mod_main_signal_bind


	return 0

}

##
### Tail: Portal / repo_clone
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_repo_clone "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
