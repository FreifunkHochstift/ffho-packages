ffho-debug
==========

Debug scripts for gluon nodes.

site.conf
---------

**debugserver.host:**
- list of possible debugserver

**debugserver.port:**
- destination port for debug reports

### example
```lua
{
  debugserver = {
    host = { 'debugreport.ffho.net' },
    port = 1337,
  },
  ...
},
```
