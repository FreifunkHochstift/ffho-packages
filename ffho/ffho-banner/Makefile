include $(TOPDIR)/rules.mk

PKG_NAME:=ffho-banner
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/ffho-banner
  SECTION:=ffho
  CATEGORY:=FFHO
  TITLE:=Banner file replacement
  DEPENDS:=+gluon-core +busybox
  MAINTAINER:=Freifunk Hochstift <kontakt@hochstift.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffho-packages
endef

define Package/ffho-banner/description
	Banner file replacement
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffho-banner/preinst
#!/bin/sh
cd "$${IPKG_INSTROOT}/etc/"
if [ -h "./banner" ] ; then
	/bin/rm "./banner"
elif [ -f "./banner" ] ; then
	/bin/mv "./banner" "./banner.openwrt"
fi
/bin/ln -s "./banner.openwrt" "./banner"
exit 0
endef

define Package/ffho-banner/postinst
#!/bin/sh
cd "$${IPKG_INSTROOT}/etc/"
[ -h "./banner" ] && /bin/rm -f "./banner"
/bin/ln -s "./banner.ffho" "./banner"
exit $$?
endef

define Package/ffho-banner/prerm
#!/bin/sh
cd "$${IPKG_INSTROOT}/etc/"
if [ -h "./banner" ] ; then
	[[ "$$(readlink -n ./banner)" == "./banner.ffho" ]] && \
	/bin/rm -f "./banner" && \
	[ -f "./banner.openwrt" ] && \
	/bin/ln -s "./banner.openwrt" "./banner"
fi
exit 0
endef

define Package/ffho-banner/install
	$(INSTALL_DIR) $(1)/etc/
	$(INSTALL_DATA) ./files/etc/banner.ffho $(1)/etc/
endef

$(eval $(call BuildPackage,ffho-banner))
