include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-respondd-config
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
PKG_BUILD_DEPENDS := respondd

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-respondd-config
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Additional respondd config files
  DEPENDS:=+gluon-core +libgluonutil
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

define Package/ffho-respondd-config/description
  This package contains additional config files for respondd
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/ffho-respondd-config/install
	$(INSTALL_DIR) $(1)/lib/gluon/respondd
	$(CP) $(PKG_BUILD_DIR)/respondd.so $(1)/lib/gluon/respondd/ffho.so
endef

$(eval $(call BuildPackage,ffho-respondd-config))
