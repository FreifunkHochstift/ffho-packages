include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-site-auto-select
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PFG_BUILD_DEPENDS := lua-cjson/host

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-site-auto-select
  SECTION:=ffho
  CATEGORY:=Gluon
  TITLE:=Toolset to autodetect the site.
  DEPENDS:=+gluon-core +micrond +gluon-neighbour-info +ffho-site-generate
  MAINTAINER:=Freifunk Hochstift <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffho-packages.git
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
endef

define Package/ffho-site-auto-select/preinst
endef

define Package/ffho-site-auto-select/install
  $(CP) ./files/* $(1)/
  lua -e 'print(require("cjson").encode(require("cjson").decode(io.open("$(GLUON_SITEDIR)/extra/geo.json"):read('*a'))))' >  $(1)/lib/gluon/site-select/geo.json
endef

$(eval $(call BuildPackage,ffho-site-auto-select))
