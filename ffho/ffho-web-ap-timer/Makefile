include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-web-ap-timer
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)

define Package/ffho-web-ap-timer
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Luci module for ap-timer settings
  DEPENDS:=+gluon-web-admin
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,ffho-web-ap-timer,i18n)
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-web-ap-timer/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	$(call GluonInstallI18N,ffho-web-ap-timer,$(1))
endef

$(eval $(call BuildPackage,ffho-web-ap-timer))
