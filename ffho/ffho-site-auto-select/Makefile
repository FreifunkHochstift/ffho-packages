include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-site-auto-select
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PFG_BUILD_DEPENDS := lua-cjson/host

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-site-auto-select
  SECTION:=ffho
  CATEGORY:=Site-select
  TITLE:=Toolset to autodetect the site.
  DEPENDS:=+gluon-core +micrond +gluon-neighbour-info +ffho-site-generate
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-site-auto-select/description
  Toolset to autodetect the site by geo and gluon-neighbour-info.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	lua -e 'print(require("cjson").encode(require("cjson").decode(io.open("$(call qstrip,$(CONFIG_GLUON_SITEDIR))/extra/geo.json"):read("*a"))))' > $(PKG_BUILD_DIR)/geo.json
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-site-auto-select/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	$(INSTALL_DIR) $(1)/lib/gluon/site-select
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/geo.json $(1)/lib/gluon/site-select/
endef

$(eval $(call BuildPackage,ffho-site-auto-select))
