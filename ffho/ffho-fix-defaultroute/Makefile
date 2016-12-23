include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-fix-defaultroute
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/ffho-fix-defaultroute
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Freifunk Hochstift fix Defaultroute
  DEPENDS:=+gluon-core
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-fix-defaultroute/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffho-fix-defaultroute))
