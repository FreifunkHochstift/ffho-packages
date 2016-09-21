include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-geo-location-altitude-delete
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/ffho-geo-location-altitude-delete
  SECTION:=ffho
  CATEGORY:=Workarounds
  TITLE:=Deleting the altitude value of the geo location
  DEPENDS:=+gluon-core
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-geo-location-altitude-delete/description
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-geo-location-altitude-delete/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
endef

$(eval $(call BuildPackage,ffho-geo-location-altitude-delete))
