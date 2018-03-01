################################################################################
#
# wtower
#
################################################################################

WTOWER_VERSION = master
WTOWER_SITE = https://github.com/z80x1/watertower.git
WTOWER_SITE_METHOD=git

define WTOWER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/RPi/*.py $(TARGET_DIR)/opt/
endef

#define WTOWER_INSTALL_INIT_SYSTEMD
#    $(INSTALL) -D -m 644 package/wtower/wtower.service \
        $(TARGET_DIR)/usr/lib/systemd/system/wtower.service
#    mkdir -p $(TARGET_DIR)/etc/systemd/system/multi-user.target.wants
#    ln -fs ../../../../usr/lib/systemd/system/wtower.service \
        $(TARGET_DIR)/etc/systemd/system/multi-user.target.wants/wtower.service
#endef

$(eval $(generic-package))
