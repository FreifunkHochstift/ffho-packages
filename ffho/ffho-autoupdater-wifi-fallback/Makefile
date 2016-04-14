include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-autoupdater-wifi-fallback
PKG_VERSION:=2

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/ffho-autoupdater-wifi-fallback
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Implements switching to fallback mode if we are cut off from the mesh
  DEPENDS:=+iwinfo +wpa-supplicant-mini +gluon-autoupdater
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-autoupdater-wifi-fallback/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffho-autoupdater-wifi-fallback))
