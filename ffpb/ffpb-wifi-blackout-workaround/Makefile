include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-wifi-blackout-workaround
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-wifi-blackout-workaround
  SECTION:=ffpb
  CATEGORY:=workarounds
  TITLE:=WiFi-Blackout workaround
  DEPENDS:=+busybox
endef

define Package/ffpb-wifi-blackout-workaround/description
	Disables ANI when the "stable" firmware branch is used.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-wifi-blackout-workaround/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffpb-wifi-blackout-workaround))
