include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-ath9k-blackout-workaround
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-ath9k-blackout-workaround
  SECTION:=ffho
  CATEGORY:=Workarounds
  TITLE:=ATH9K-Blackout workaround
  DEPENDS:=+gluon-core +micrond
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

define Package/ffho-ath9k-blackout-workaround/description
	Restartes the wifi if possible blckout is detected.
endef

define Package/ffho-ath9k-blackout-workaround/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackageGluon,$(PKG_NAME)))
