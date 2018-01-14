################################################################################
#
# wtower
#
################################################################################

WTOWER_VERSION = master
WTOWER_SITE = https://github.com/z80x1/watertower.git
WTOWER_SITE_METHOD=git

define WTOWER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 -o admin $(@D)/RPi/*.py $(TARGET_DIR)/opt/
endef

$(eval $(generic-package))
