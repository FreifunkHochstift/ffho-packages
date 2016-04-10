include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-autoupdater-wifi-fallback-legacy
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-autoupdater-wifi-fallback-legacy
  SECTION:=ffho
  CATEGORY:=Gluon
  TITLE:=Toolset of scripts for migration of ffho-autoupdater-wifi-fallback.
  DEPENDS:=+ffho-autoupdater-wifi-fallback
  MAINTAINER:=Freifunk Hochstift <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffho-packages.git
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
endef

define Package/ffho-autoupdater-wifi-fallback-legacy/preinst
endef

define Package/ffho-autoupdater-wifi-fallback-legacy/install
  $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffho-autoupdater-wifi-fallback-legacy))
