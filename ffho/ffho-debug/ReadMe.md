ffho-debug
==========

Debug scripts for gluon nodes.

site.conf
---------

**debugserver.host:**
- list of possible debugserver

**debugserver.port:**
- destination port for debug reports

**debugserver.liveport: optional**
- destination port for `ffho-debug-live`

### example
```lua
{
  debugserver = {
    host = { 'debugreport.ffho.net' },
    port = 1337,
    liveport = 1338,
  },
  ...
},
```
