################################################################################
#
# python-evdev
#
################################################################################

PYTHON_EVDEV_VERSION = v0.6.4
PYTHON_EVDEV_SITE = $(call github,gvalkov,python-evdev,$(PYTHON_EVDEV_VERSION))
PYTHON_EVDEV_SETUP_TYPE = setuptools

$(eval $(python-package))
