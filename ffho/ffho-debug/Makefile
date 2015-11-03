include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-debug
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-debug
  SECTION:=ffho
  CATEGORY:=debug
  TITLE:=Debug scripts for Freifunk Hochstift
  DEPENDS:=+gluon-core +ubus +libubox +busybox
  MAINTAINER:=Freifunk Hochstift <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffho-packages.git
endef

define Package/ffho-debug/description
	Debug scripts for FFHO
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-debug/install
	$(INSTALL_DIR) $(1)/bin/
	$(INSTALL_BIN) ./files/bin/* $(1)/bin/
	$(INSTALL_DIR) $(1)/lib/gluon/cron/
	$(INSTALL_DATA) ./files/lib/gluon/cron/* $(1)/lib/gluon/cron/
endef

$(eval $(call BuildPackage,ffho-debug))
