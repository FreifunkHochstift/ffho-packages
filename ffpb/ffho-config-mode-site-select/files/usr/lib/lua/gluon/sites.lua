local config = '/lib/gluon/site-select/sites.conf'

local function loader()
   coroutine.yield('return ')
   coroutine.yield(io.open(config):read('*a'))
end

-- setfenv doesn't work with Lua 5.2 anymore, but we're using 5.1
local sites = setfenv(assert(load(coroutine.wrap(loader), 'sites.conf')), {})()

module 'gluon.sites'

return sites
