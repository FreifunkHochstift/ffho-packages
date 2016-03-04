include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-config-mode-mesh-vpn
PKG_VERSION:=2

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)


define Package/ffho-config-mode-mesh-vpn
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Toggle mesh-vpn and bandwidth limit
  DEPENDS:=gluon-config-mode-core-virtual +gluon-mesh-vpn-fastd
  PROVIDES:=gluon-config-mode-mesh-vpn
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,ffho-config-mode-mesh-vpn,i18n)
endef

define Package/ffho-config-mode-mesh-vpn/install
	$(CP) ./files/* $(1)/
	$(call GluonInstallI18N,ffho-config-mode-mesh-vpn,$(1))
endef

$(eval $(call BuildPackage,ffho-config-mode-mesh-vpn))
