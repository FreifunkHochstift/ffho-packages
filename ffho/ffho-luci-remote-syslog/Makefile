include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-luci-remote-syslog
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)

define Package/ffho-luci-remote-syslog
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Luci module for setting a remote syslog server
  DEPENDS:=+gluon-luci-admin
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,ffho-luci-remote-syslog,i18n)
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/ffho-luci-remote-syslog/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	$(call GluonInstallI18N,ffho-luci-remote-syslog,$(1))
endef

$(eval $(call BuildPackage,ffho-luci-remote-syslog))
