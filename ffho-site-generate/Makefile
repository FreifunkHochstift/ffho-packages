include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-site-generate
PKG_VERSION:=2

PFG_BUILD_DEPENDS := lua-cjson/host

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-site-generate
  SECTION:=ffho
  CATEGORY:=Site-select
  TITLE:=Scripts for generating a new site.json
  DEPENDS:=+gluon-core
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

define Package/ffho-site-generate/description
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)/site-select
endef

define Build/Configure
endef

define Build/Compile
	GLUON_SITEDIR='$(call qstrip,$(CONFIG_GLUON_SITEDIR))' lua -e 'print(require("cjson").encode(assert(dofile("./scripts/sites.lua"))))' > $(PKG_BUILD_DIR)/site-select/sites.json
	GLUON_SITEDIR='$(call qstrip,$(CONFIG_GLUON_SITEDIR))' lua -e 'print(require("cjson").encode(assert(dofile("./scripts/template.lua"))))' > $(PKG_BUILD_DIR)/site-select/template.json
	if [ -e $(call qstrip,$(CONFIG_GLUON_SITEDIR))/extra/groups.conf  ]; then GLUON_SITEDIR='$(call qstrip,$(CONFIG_GLUON_SITEDIR))' lua -e 'print(require("cjson").encode(assert(dofile("./scripts/groups.lua"))))' >  $(PKG_BUILD_DIR)/site-select/groups.json; fi
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-site-generate/install
	$(CP) ./files/* $(1)/
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/

	$(INSTALL_DIR) $(1)/lib/gluon/site-select
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/site-select/* $(1)/lib/gluon/site-select/
endef

$(eval $(call BuildPackage,ffho-site-generate))
