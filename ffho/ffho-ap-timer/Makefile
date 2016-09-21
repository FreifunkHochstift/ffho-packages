include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-ap-timer
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/ffho-ap-timer
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Timer for the client wifi
  DEPENDS:=+gluon-core
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-ap-timer/description
	Timer for the client wifi
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-ap-timer/install
	$(CP) ./files/* $(1)/
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
endef

$(eval $(call BuildPackage,ffho-ap-timer))
