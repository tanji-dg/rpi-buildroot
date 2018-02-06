################################################################################
#
# rpi-bt-firmware
#
################################################################################

RPI_BT_FIRMWARE_VERSION = a439f892bf549ddfefa9ba7ad1999cc515f233bf
RPI_BT_FIRMWARE_SITE = https://aur.archlinux.org/pi-bluetooth.git
RPI_BT_FIRMWARE_SITE_METHOD = git
RPI_BT_FIRMWARE_LICENSE = PROPRIETARY
RPI_BT_FIRMWARE_LICENSE_FILES = LICENCE.broadcom_bcm43xx

define RPI_BT_FIRMWARE_INSTALL_TARGET_CMDS
	ln -sf ../lib/firmware $(TARGET_DIR)/etc/firmware
	$(INSTALL) -D -m 0644 $(@D)/BCM43430A1.hcd \
		$(TARGET_DIR)/lib/firmware/BCM43430A1.hcd
	#$(INSTALL) -D -m 0643 $(@D)/BCM43430A1.hcd $(TARGET_DIR)/lib/firmware/brcm/BCM43430A1.hcd
	#$(INSTALL) -D -m 0755 package/rpi-bt-firmware/S31bluetooth $(TARGET_DIR)/etc/init.d/S31bluetooth
	#$(INSTALL) -D -m 0644 package/rpi-bt-firmware/main.conf $(TARGET_DIR)/etc/bluetooth/main.conf
endef

$(eval $(generic-package))
