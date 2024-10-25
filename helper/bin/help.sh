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
### Head: Portal / help
##


mod_help () {


cat << EOF

Usage:

	$ make [action]

Example:

	$ make
	$ make help

	$ make recipe

	$ make build-essential
	$ make build


Debug:
	$ export DEBUG_HELPER=true

EOF


	return 0

}


portal_help () {

	#util_error_echo 'portal_help'


	mod_help

	mod_main_signal_bind


	return 0

}

##
### Tail: Portal / help
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_help "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
