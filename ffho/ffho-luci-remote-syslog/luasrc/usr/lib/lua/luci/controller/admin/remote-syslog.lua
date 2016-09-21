module("luci.controller.admin.remote-syslog", package.seeall)

function index()
        entry({"admin", "remote-syslog"}, cbi("admin/remote-syslog"), _("Remote Syslog"), 85)
end
