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
### Head: Portal / build_essential
##

portal_build_essential () {


	mod_build_essential


	mod_main_signal_bind


	return 0

}

##
### Tail: Portal / build_essential
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_build_essential "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################