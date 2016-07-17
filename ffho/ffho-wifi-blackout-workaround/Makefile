include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-wifi-blackout-workaround
PKG_VERSION:=2
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-wifi-blackout-workaround
  SECTION:=ffho
  CATEGORY:=Workarounds
  TITLE:=WiFi-Blackout workaround
  DEPENDS:=+gluon-core
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-wifi-blackout-workaround/description
	Disables the ANI feature.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-wifi-blackout-workaround/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffho-wifi-blackout-workaround))
