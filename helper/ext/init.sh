

################################################################################
### Head: Base / Init
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan
##


## set -e ##

. "${THE_INIT_DIR_PATH}/base.sh"

base_var_init

base_var_dump


##
### Tail: Base / Init
################################################################################




################################################################################
### Head: Main / Init
##


##
## ## Load: Main
##

. "${THE_MAIN_EXT_MAIN_DIR_PATH}/init.sh"


##
### Tail: Main / Init
################################################################################


################################################################################
### Head: Master / Init
##


##
## ## Load: Master
##

. "${THE_MAIN_EXT_MASTER_DIR_PATH}/init.sh"


##
### Tail: Master / Init
################################################################################


################################################################################
### Head: Config / Init
##


##
## ## Load: Config
##

. "${THE_MASTER_ASSET_CONFIG_DIR_PATH}/init.sh"


##
## ## Load: Master / Base
##

. "${THE_MAIN_EXT_MASTER_DIR_PATH}/base.sh"

master_var_init

master_var_dump


##
### Tail: Config / Init
################################################################################
