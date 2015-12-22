include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-openwrt-migration-tools
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-openwrt-migration-tools
  SECTION:=ffho
  CATEGORY:=Gluon
  TITLE:=Toolset of scripts that support the migration from one version of OpenWRT to another.
  DEPENDS:=+gluon-core +busybox +hostapd-common +netifd
  MAINTAINER:=Freifunk Hochstift <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffho-packages.git
endef

define Package/ffho-openwrt-migration-tools/description
	A collection of scripts that fix and cleanup configurations on a node
	when migrating the Gluon base-version of OpenWRT from one major release
	to another.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-openwrt-migration-tools/preinst
endef

define Package/ffho-openwrt-migration-tools/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/
	$(INSTALL_BIN) ./files/etc/uci-defaults/40-wireless-config-hwmode-fix $(1)/etc/uci-defaults/
endef

$(eval $(call BuildPackage,ffho-openwrt-migration-tools))
