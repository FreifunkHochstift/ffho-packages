include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-debug
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-debug
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Debug scripts for Freifunk Hochstift
  DEPENDS:=+gluon-core
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

define Package/ffho-debug/description
	Debug scripts for FFHO
endef

$(eval $(call BuildPackageGluon,$(PKG_NAME)))
