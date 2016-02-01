include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-status-page
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-status-page
  SECTION:=ffho
  CATEGORY:=Gluon
  TITLE:=Adds a status page showing information about the node.
  DEPENDS:=+gluon-core +gluon-neighbour-info +uhttpd
endef

define Package/ffho-status-page/description
	Adds a status page showing information about the node.
	Especially useful in combination with the next-node feature.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-status-page/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffho-status-page))
