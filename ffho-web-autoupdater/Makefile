# Copyright (C) 2013 Nils Schneider <nils at nilsschneider.net>
# This is free software, licensed under the Apache 2.0 license.

include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-web-autoupdater
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-web-autoupdater
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=gluon-web module for gluon-autoupdater and ffho-autoupdater-wifi-fallback
  DEPENDS:=+gluon-web-admin +ffho-autoupdater-wifi-fallback
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  PROVIDES:=gluon-web-autoupdater
endef

$(eval $(call BuildPackageGluon,$(PKG_NAME)))
