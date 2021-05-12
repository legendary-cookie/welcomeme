ARCHS = arm64
TARGET := iphone:clang:13.6:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WelcomeMe

WelcomeMe_FILES = Tweak.x
WelcomeMe_CFLAGS = -fobjc-arc
WelcomeMe_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
