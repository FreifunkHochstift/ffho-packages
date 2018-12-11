include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-domain-migration
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-domain-migration
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Migration script for gluon multidomain support
  DEPENDS:=+gluon-core @GLUON_MULTIDOMAIN
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

define Package/ffho-domain-migration/description
	Migration script for gluon multidomain support
endef

define Package/ffho-domain-migration/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackageGluon,$(PKG_NAME)))
