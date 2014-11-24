include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-debug
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-debug
  SECTION:=ffpb
  CATEGORY:=debug
  TITLE:=Debug scripts for Freifunk Paderborn
  DEPENDS:=+gluon-core +ubus +libubox +busybox
endef

define Package/ffpb-debug/description
	Debug scripts for FFPB
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-debug/install
	$(INSTALL_DIR) $(1)/bin/
	$(INSTALL_BIN) ./files/bin/* $(1)/bin/
	$(INSTALL_DIR) $(1)/lib/gluon/cron/
	$(INSTALL_DATA) ./files/lib/gluon/cron/* $(1)/lib/gluon/cron/
endef

$(eval $(call BuildPackage,ffpb-debug))
