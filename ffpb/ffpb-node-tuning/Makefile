include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-node-tuning
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-node-tuning
  SECTION:=ffpb
  CATEGORY:=Gluon
  TITLE:=Freifunk Paderborn Node Tuning-Settings
  DEPENDS:=+gluon-core +busybox
  MAINTAINER:=Freifunk Paderborn <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffpb-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffpb-packages.git
endef

define Package/ffpb-node-tuning/description
	As its name states, this packages applies some config optimizations (like
	tweaking kernal knobs via sysctl) on the nodes.
	For the most knobs Gluon sticks for OpenWRT defaults for good reasons, as
	some values need to be set according to the environment of the nodes (e.g.
	the network's size). As OpenWRT basically aims at providing a stable system
	for standalone WiFi access-points, the system's default configuration may
	not be appropriate anymore the larger the network grows, though.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-node-tuning/postinst
#!/bin/sh
mkdir -p "$${IPKG_INSTROOT}/lib/gluon/version/"
cd "$${IPKG_INSTROOT}/lib/gluon/version/"                                                                 
echo $(PKG_VERSION)-$(PKG_RELEASE) > node-tuning
exit 0
endef

define Package/ffpb-node-tuning/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/
	$(INSTALL_DIR) $(1)/lib/gluon/upgrade/node-tuning/invariant/
	$(INSTALL_BIN) ./files/etc/uci-defaults/zz~-ffpb-upgrade $(1)/etc/uci-defaults/
	$(INSTALL_BIN) ./files//lib/gluon/upgrade/node-tuning/invariant/010-arp_caches $(1)/lib/gluon/upgrade/node-tuning/invariant/
	$(INSTALL_BIN) ./files//lib/gluon/upgrade/node-tuning/invariant/099-apply_settings $(1)/lib/gluon/upgrade/node-tuning/invariant/
endef

$(eval $(call BuildPackage,ffpb-node-tuning))
