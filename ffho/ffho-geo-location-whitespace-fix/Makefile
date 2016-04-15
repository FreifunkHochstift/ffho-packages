include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-geo-location-whitespace-fix
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-geo-location-whitespace-fix
  SECTION:=ffho
  CATEGORY:=Workarounds
  TITLE:=Fixing whitespace errors at the geo-coordinates
  DEPENDS:=+gluon-core
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-geo-location-whitespace-fix/description
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-geo-location-whitespace-fix/install
  $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffho-geo-location-whitespace-fix))
