TARGET := iphone:clang:latest:8.0
ARCHS := armv7

include $(THEOS)/makefiles/common.mk

TWEAK_NAME := StoreDiagnostics
StoreDiagnostics_FILES := Tweak.xm
StoreDiagnostics_CFLAGS := -fobjc-arc
StoreDiagnostics_FRAMEWORKS := Foundation

include $(THEOS_MAKE_PATH)/tweak.mk