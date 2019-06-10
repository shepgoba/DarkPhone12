include $(THEOS)/makefiles/common.mk
ARCHS = arm64 arm64e

TWEAK_NAME = DarkPhone12
DarkPhone12_FILES = DarkPhone12.xm
DarkPhone12_LIBRARIES = colorpicker
SHARED_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk


SUBPROJECTS += prefs

include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	echo "Tec-9 Rush B"
	install.exec "killall -9 SpringBoard"
