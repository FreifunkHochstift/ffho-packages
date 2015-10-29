include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-alfred-config
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-alfred-config
  SECTION:=ffpb
  CATEGORY:=workarounds
  TITLE:=Additional A.L.F.R.E.D. config files 
  DEPENDS:=+busybox
  MAINTAINER:=Freifunk Paderborn <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffpb-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffpb-packages.git
endef

define Package/ffpb-alfred-config/description
  This package contains additional config files for A.L.F.R.E.D. 
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-alfred-config/install
	$(INSTALL_DIR) $(1)/lib/gluon/announce/nodeinfo.d/system
	$(INSTALL_DATA) ./files/lib/gluon/announce/nodeinfo.d/system/* $(1)/lib/gluon/announce/nodeinfo.d/system/
endef

$(eval $(call BuildPackage,ffpb-alfred-config))
