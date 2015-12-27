include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-upgrade-tools
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-upgrade-tools
  SECTION:=ffho
  CATEGORY:=Gluon
  TITLE:=Toolset of scripts that support the migration from one ffho-firmware to another.
  DEPENDS:=+gluon-core +busybox
  MAINTAINER:=Freifunk Hochstift <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffho-packages.git
endef

define Package/ffho-upgrade-tools/description
	A collection of scripts that fix and cleanup configurations on a node
	when upgrading the firmware.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-upgrade-tools/preinst
endef

define Package/ffho-upgrade-tools/install
  $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffho-upgrade-tools))
