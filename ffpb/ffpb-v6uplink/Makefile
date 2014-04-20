include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-v6uplink
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-v6uplink
  SECTION:=ffpb
  CATEGORY:=ffpb
  TITLE:=FFPB-IPv6-Uplink
  DEPENDS:=+odhcp6c
endef

define Package/ffpb-v6uplink/description
	Give gluon-nodes an ipv6 uplink
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-v6uplink/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffpb-v6uplink))
