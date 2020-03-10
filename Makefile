ARCHS = arm64e arm64 armv7
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Enpip
Enpip_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
