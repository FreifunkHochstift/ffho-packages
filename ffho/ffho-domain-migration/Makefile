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

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-domain-migration/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
endef

$(eval $(call BuildPackage,ffho-domain-migration))
