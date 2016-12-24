module("luci.controller.admin.ap-timer", package.seeall)

function index()
        entry({"admin", "ap-timer"}, cbi("admin/ap-timer"), _("AP Timer"), 30)
end
