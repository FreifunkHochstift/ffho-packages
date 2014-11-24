include $(TOPDIR)/rules.mk

PKG_NAME:=ffpb-alfred-watchdog
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffpb-alfred-watchdog
  SECTION:=ffpb
  CATEGORY:=workarounds
  TITLE:=A.L.F.R.E.D. crash watchdog
  DEPENDS:=+busybox
  MAINTAINER:=Freifunk Paderborn <maschinenraum@paderborn.freifunk.net>
  URL:=https://git.c3pb.de/freifunk-pb/ffpb-packages
  SOURCE:=git@git.c3pb.de:freifunk-pb/ffpb-packages.git
endef

define Package/ffpb-alfred-watchdog/description
	Monitors whether or not the A.L.F.R.E.D. is still running on a node or
	not. Version 2013.x crashes from time to time and thus some nodes dis-
	appear from the map. It is thus suitable to monitor the state of the
	daemon on the node itself by periodically making requests to avoid un-
	necessary support-requests and manual restarts of these nodes. In a
	failure state, the daemon can simply be restarted by triggering its
	init-script.

	Please note that the bug is most likely gone in v2014.1 and newer and
	and thus the package does not need to be included in the firmware in
	newer firmwares.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffpb-alfred-watchdog/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ffpb-alfred-watchdog))
