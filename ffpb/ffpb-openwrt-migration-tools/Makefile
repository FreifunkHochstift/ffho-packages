include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-openwrt-migration-tools
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-openwrt-migration-tools
  SECTION:=ffpb
  CATEGORY:=Gluon
  TITLE:=Toolset of scripts that support the migration from one version of OpenWRT to another.
  DEPENDS:=+gluon-core +busybox
  MAINTAINER:=Freifunk Paderborn <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffpb-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffpb-packages.git
endef

define Package/ffpb-openwrt-migration-tools/description
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

define Package/ffpb-openwrt-migration-tools/preinst
#!/bin/sh
cd "$${IPKG_INSTROOT}/lib/netifd/wireless/"
if [ -f "mac80211.sh" ] ; then
        /bin/rm "./mac80211.sh"
fi
exit 0
endef

define Package/ffpb-openwrt-migration-tools/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/
	$(INSTALL_DIR) $(1)/lib/netifd/wireless/
	$(INSTALL_BIN) ./files/etc/uci-defaults/90-tlwr1043ndv2-autoupdater-to-stable $(1)/etc/uci-defaults/
	$(INSTALL_BIN) ./files/etc/uci-defaults/40-wireless-config-hwmode-fix $(1)/etc/uci-defaults/
	$(INSTALL_BIN) ./files/lib/netifd/wireless/mac80211.sh $(1)/lib/netifd/wireless/
endef

$(eval $(call BuildPackage,ffpb-openwrt-migration-tools))
