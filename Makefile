include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DarkPhone12
DarkPhone12_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
