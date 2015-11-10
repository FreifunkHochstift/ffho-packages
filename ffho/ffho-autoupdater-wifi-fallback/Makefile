include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-autoupdater-wifi-fallback
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/ffho-autoupdater-wifi-fallback
  SECTION:=admin
  CATEGORY:=Administration
  DEPENDS:=+wireless-tools +autoupdater
  TITLE:=Implements switching to fallback mode if we are cut off from the mesh
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
