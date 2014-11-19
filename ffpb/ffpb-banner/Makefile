include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-banner
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-banner
  SECTION:=ffpb
  CATEGORY:=debug
  TITLE:=Banner file replacement
  DEPENDS:=+gluon-core +busybox
endef

define Package/ffpb-banner/description
	Banner file replacement
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-banner/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffpb-banner))
