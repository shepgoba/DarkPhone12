include $(THEOS)/makefiles/common.mk
ARCHS = arm64 arm64e

TWEAK_NAME = DarkPhone12
DarkPhone12_FILES = DarkPhone12.xm DarkPhone12-Keypad.xm DarkPhone12-Contacts.xm
SHARED_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
