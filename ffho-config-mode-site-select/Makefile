include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-config-mode-site-select
PKG_VERSION:=0.1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-config-mode-site-select
  SECTION:=ffho
  CATEGORY:=Site-select
  TITLE:=UI for changing the node-config
  DEPENDS:=+gluon-config-mode-core +ffho-site-generate
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

$(eval $(call BuildPackageGluon,$(PKG_NAME)))
