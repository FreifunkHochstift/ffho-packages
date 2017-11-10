include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-autoupdater-wifi-fallback
PKG_VERSION:=2

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
PKG_BUILD_DEPENDS := respondd

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-autoupdater-wifi-fallback
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Implements switching to fallback mode if we are cut off from the mesh
  DEPENDS:=+gluon-autoupdater +libiwinfo-lua +iw
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	$(call Build/Compile/Default)
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-autoupdater-wifi-fallback/install
	$(CP) ./files/* $(1)/
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/

	$(INSTALL_DIR) $(1)/lib/gluon/respondd
	$(CP) $(PKG_BUILD_DIR)/respondd.so $(1)/lib/gluon/respondd/autoupdater-wifi-fallback.so
endef

$(eval $(call BuildPackage,ffho-autoupdater-wifi-fallback))
