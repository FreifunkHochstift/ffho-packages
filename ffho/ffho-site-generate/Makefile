include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-site-generate
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PFG_BUILD_DEPENDS := lua-cjson/host

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-site-generate
  SECTION:=ffho
  CATEGORY:=Gluon
  TITLE:=Scripts for generating a new site.conf
  DEPENDS:=+gluon-core +luci-lib-json
  MAINTAINER:=Freifunk Hochstift <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffho-packages.git
endef

define Package/ffho-site-generate/description
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-site-generate/preinst
endef

define Package/ffho-site-generate/install
	$(CP) ./files/* $(1)/
	lua -e 'print(require("cjson").encode(assert(dofile("./scripts/site_config.lua"))))' > $(1)/lib/gluon/site-select/default.json
	lua -e 'print(require("cjson").encode(assert(dofile("./scripts/sites.lua"))))' >  $(1)/lib/gluon/site-select/sites.json
	if [ -e $(GLUON_SITEDIR)/extra/groups.conf  ]; then lua -e 'print(require("cjson").encode(assert(dofile("./scripts/groupes.lua"))))' >  $(1)/lib/gluon/site-select/groups.json; fi
endef

$(eval $(call BuildPackage,ffho-site-generate))
