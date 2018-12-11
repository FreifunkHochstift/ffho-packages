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

$(eval $(call BuildPackageGluon,$(PKG_NAME)))
