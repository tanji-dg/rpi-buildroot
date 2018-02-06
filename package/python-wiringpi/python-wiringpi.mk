################################################################################
#
# python-wiringpi
#
################################################################################

PYTHON_WIRINGPI_VERSION = 2.44.4
PYTHON_WIRINGPI_SOURCE = wiringpi-$(PYTHON_WIRINGPI_VERSION).tar.gz
PYTHON_WIRINGPI_SITE = https://pypi.python.org/packages/dd/a5/23352c20c6246608456ca3f34c074d62aed4cdcf7704b62be6246e75881e
PYTHON_WIRINGPI_SETUP_TYPE = setuptools
PYTHON_WIRINGPI_LICENSE = LGPL
PYTHON_WIRINGPI_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
