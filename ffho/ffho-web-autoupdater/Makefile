# Copyright (C) 2013 Nils Schneider <nils at nilsschneider.net>
# This is free software, licensed under the Apache 2.0 license.

include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-web-autoupdater
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)


define Package/ffho-web-autoupdater
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=gluon-web module for gluon-autoupdater and ffho-autoupdater-wifi-fallback
  DEPENDS:=+gluon-web-admin +ffho-autoupdater-wifi-fallback
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  PROVIDES:=gluon-web-autoupdater
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,ffho-web-autoupdater,i18n)
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-web-autoupdater/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	$(call GluonInstallI18N,ffho-web-autoupdater,$(1))
endef

$(eval $(call BuildPackage,ffho-web-autoupdater))
