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
### Head: Portal / test
##

portal_test () {

	util_error_echo 'portal_test'


	util_error_echo "_Conf_Repo_Tag_: ${_Conf_Repo_Tag_}"

	mod_main_signal_bind

	sleep 10;

}

##
### Tail: Portal / test
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_test "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
