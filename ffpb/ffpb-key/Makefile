include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-key
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-key
  SECTION:=ffpb
  CATEGORY:=ffpb
  TITLE:=Status-Bot Koy
  DEPENDS:=+dropbear
endef

define Package/ffpb-key/description
	Setups the status bot key (SSH).
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-key/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffpb-key))
