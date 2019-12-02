################################################################################
#
# python-evdev
#
################################################################################

PYTHON_EVDEV_VERSION = v1.2.0
PYTHON_EVDEV_SITE = $(call github,gvalkov,python-evdev,$(PYTHON_EVDEV_VERSION))
PYTHON_EVDEV_SETUP_TYPE = setuptools
PYTHON_EVDEV_BUILD_OPTS = build_ecodes --evdev-headers $(HOST_DIR)/$(GNU_TARGET_NAME)/sysroot/usr/include/linux/input.h:$(HOST_DIR)/$(GNU_TARGET_NAME)/sysroot/usr/include/linux/input-event-codes.h
PYTHON_EVDEV_DEPENDENCIES = linux

$(eval $(python-package))
