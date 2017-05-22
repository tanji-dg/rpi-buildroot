################################################################################
#
# python-wiringpi
#
################################################################################

PYTHON_WIRINGPI_VERSION = f6ea082ff64c650ce92adeed4343e6cdd68d2124
PYTHON_WIRINGPI_SITE = $(call github,Gadgetoid,WiringPi2-Python,$(PYTHON_WIRINGPI_VERSION))
PYTHON_WIRINGPI_GIT_SUBMODULE = YES
PYTHON_WIRINGPI_DEPENDENCIES = wiringpi
PYTHON_WIRINGPI_SETUP_TYPE = setuptools

$(eval $(python-package))
