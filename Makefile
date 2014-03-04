TARGET := iphone:clang
ARCHS := armv6 arm64
include theos/makefiles/common.mk

TWEAK_NAME = BlackTranslucentPhotos
BlackTranslucentPhotos_FILES = Tweak.xm
BlackTranslucentPhotos_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileSlideShow"
