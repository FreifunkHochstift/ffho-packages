include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-status-page
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-status-page
  SECTION:=ffho
  CATEGORY:=Gluon
  TITLE:=Adds a status page showing information about the node.
  DEPENDS:=+gluon-core +uhttpd +gluon-status-page-api +libiwinfo-lua +luci-lib-jsonc
  PROVIDES:=gluon-status-page
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
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
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-status-page/install
	$(CP) ./files/* $(1)/
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
endef

$(eval $(call BuildPackage,ffho-status-page))
