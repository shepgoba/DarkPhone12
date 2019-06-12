include $(THEOS)/makefiles/common.mk

SDK_VERSION = 11.2
SYSROOT = $(THEOS)/sdks/iPhoneOS11.2.sdk

BUNDLE_NAME = DarkPhone12
DarkPhone12_FILES = DarkPhone12Prefs.m
DarkPhone12_INSTALL_PATH = /Library/PreferenceBundles
DarkPhone12_FRAMEWORKS = UIKit
DarkPhone12_PRIVATE_FRAMEWORKS = Preferences
DarkPhone12_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(BUNDLE_NAME).plist$(ECHO_END)
