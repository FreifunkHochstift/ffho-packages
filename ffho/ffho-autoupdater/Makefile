include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-autoupdater
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
PKG_BUILD_DEPENDS := respondd

include $(GLUONDIR)/include/package.mk

define Package/ffho-autoupdater
  SECTION:=ffho
  CATEGORY:=Gluon
  DEPENDS:=+gluon-core +libgluonutil +micrond +autoupdater
  TITLE:=Automatically update firmware
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/ffho-autoupdater/install
	$(CP) ./files/* $(1)/

	$(INSTALL_DIR) $(1)/lib/gluon/respondd
	$(CP) $(PKG_BUILD_DIR)/respondd.so $(1)/lib/gluon/respondd/autoupdater.so

	if [ '$(GLUON_BRANCH)' ]; then \
		$(INSTALL_DIR) $(1)/lib/gluon/autoupdater; \
		echo '$(GLUON_BRANCH)' > $(1)/lib/gluon/autoupdater/default_branch; \
	fi
endef

define Package/ffho-autoupdater/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,ffho-autoupdater))
