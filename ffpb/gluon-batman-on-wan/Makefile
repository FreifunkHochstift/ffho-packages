include $(TOPDIR)/rules.mk

PKG_NAME := gluon-batman-on-wan
PKG_VERSION := 2
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/gluon-batman-on-wan
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Option to enable mesh (batadv) on WAN port
  DEPENDS:=+gluon-core +gluon-mesh-batman-adv +luci-lib-core
endef

define Package/gluon-batman-on-wan/description
	Gluon community wifi mesh firmware framework:

	This adds an interface named wan_mesh which will be part of bat0
	so nodes can be connected over batman-adv.

	The default option must be set using the site.conf option batman_on_wan to
	either 0 (disabled) or 1 (enabled).
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-batman-on-wan/install
	$(CP) ./files/* $(1)/

	$(INSTALL_DIR) $(1)/lib/gluon
endef

$(eval $(call BuildPackage,gluon-batman-on-wan))
