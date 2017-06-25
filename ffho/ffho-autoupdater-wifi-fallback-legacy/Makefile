include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-autoupdater-wifi-fallback-legacy
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-autoupdater-wifi-fallback-legacy
  SECTION:=ffho
  CATEGORY:=Workarounds
  TITLE:=Toolset of scripts for migration of ffho-autoupdater-wifi-fallback.
  DEPENDS:=+ffho-autoupdater-wifi-fallback
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

define Package/ffho-autoupdater-wifi-fallback-legacy/description
	A collection of scripts that fix and cleanup configurations off
	ffho-autoupdater-wifi-fallback on a node when upgrading the firmware.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-autoupdater-wifi-fallback-legacy/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
endef

$(eval $(call BuildPackage,ffho-autoupdater-wifi-fallback-legacy))
