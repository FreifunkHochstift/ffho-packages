include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-config-mode-site-select
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)

define Package/ffho-config-mode-site-select
  SECTION:=ffho
  CATEGORY:=Site-select
  TITLE:=UI for changing the node-config
  DEPENDS:=+gluon-config-mode-core-virtual +ffho-site-generate
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,ffho-config-mode-site-select,i18n)
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-config-mode-site-select/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	$(call GluonInstallI18N,ffho-config-mode-site-select,$(1))
endef

$(eval $(call BuildPackage,ffho-config-mode-site-select))
