include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-tl-wr1043ndv2-autoupdater-2-stable
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-tl-wr1043ndv2-autoupdater-2-stable
  SECTION:=ffpb
  CATEGORY:=Gluon
  TITLE:=One-Time TP-Link TL-WR1043NDv2 Autoupdater Branch Change
  DEPENDS:=+gluon-core +busybox
  MAINTAINER:=Freifunk Paderborn <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffpb-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffpb-packages.git
endef

define Package/ffpb-tl-wr1043ndv2-autoupdater-2-stable/description
	We supported the TP-Link TL-WR1043NDv2 hardware already in an early
	phase in the development of Gluon 2014.4 by building custom firmware
	and published them in the testing branch (and later also in the
	stable branch). As a device with quite a lot of CPU-Power, it is used
	in some rather crowded environments in bars and stores. It is unclear,
	though, which update stream got configured by the users in this scenario.

	As this particular piece of hardware is now officially supported by
	Gluon with version 2014.4, we are going to set the autoupdater branch
	to "stable" on ALL of these devices, such that development can be cont-
	inued in the testing & experimental branches without interfering the
	use of the nodes at our "early adopters".
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-tl-wr1043ndv2-autoupdater-2-stable/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults/
	$(INSTALL_BIN) ./files/etc/uci-defaults/90-tl-wr1043nd-v2-autoupdater-to-stable $(1)/etc/uci-defaults/
endef

$(eval $(call BuildPackage,ffpb-tl-wr1043ndv2-autoupdater-2-stable))
