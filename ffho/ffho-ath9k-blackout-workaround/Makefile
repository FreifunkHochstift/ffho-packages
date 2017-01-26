include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-ath9k-blackout-workaround
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-ath9k-blackout-workaround
  SECTION:=ffho
  CATEGORY:=Workarounds
  TITLE:=ATH9K-Blackout workaround
  DEPENDS:=+gluon-core +micrond
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-ath9k-blackout-workaround/description
	Restartes the wifi if possible blckout is detected.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-ath9k-blackout-workaround/install
	$(CP) ./files/* $(1)/
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
endef

define Package/ffho-ath9k-blackout-workaround/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,ffho-ath9k-blackout-workaround))
