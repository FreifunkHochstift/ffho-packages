include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-site-generate
PKG_VERSION:=2
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PFG_BUILD_DEPENDS := lua-cjson/host

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/ffho-site-generate
  SECTION:=ffho
  CATEGORY:=Site-select
  TITLE:=Scripts for generating a new site.json
  DEPENDS:=+gluon-core +luci-lib-json
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-site-generate/description
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-site-generate/install
	$(CP) ./files/* $(1)/
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	lua -e 'print(require("cjson").encode(assert(dofile("./scripts/template.lua"))))' > $(1)/lib/gluon/site-select/template.json
	lua -e 'print(require("cjson").encode(assert(dofile("./scripts/sites.lua"))))' >  $(1)/lib/gluon/site-select/sites.json
	if [ -e $(GLUON_SITEDIR)/extra/groups.conf  ]; then lua -e 'print(require("cjson").encode(assert(dofile("./scripts/groupes.lua"))))' >  $(1)/lib/gluon/site-select/groups.json; fi
endef

$(eval $(call BuildPackage,ffho-site-generate))
