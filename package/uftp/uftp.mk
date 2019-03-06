################################################################################
#
# uftp
#
################################################################################

UFTP_VERSION = 4.9.8
UFTP_SOURCE = uftp-$(UFTP_VERSION).tar.gz
#UFTP_SITE = https://jaist.dl.sourceforge.net/project/uftp-multicast/source-tar
UFTP_SITE = http://sourceforge.net/projects/uftp-multicast/files/source-tar

define UFTP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define UFTP_INSTALL_TARGET_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
