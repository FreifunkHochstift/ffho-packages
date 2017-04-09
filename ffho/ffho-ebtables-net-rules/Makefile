include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-ebtables-net-rules
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffho-ebtables-net-rules
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Ebtables rules to filter unreasonable L2 traffic.
  DEPENDS:=+gluon-core +gluon-ebtables
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-ebtables-net-rules/description
	This package adds an additional layer-2 filter-ruleset to prevent unreasonable
	traffic entering the network via the nodes.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-ebtables-net-rules/install
	$(CP) ./files/* $(1)/
endef

define Package/ffho-ebtables-net-rules/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,ffho-ebtables-net-rules))
