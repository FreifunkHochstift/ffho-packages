ffho-autoupdater
================

This is a customized version of `gluon-autoupdater`.

site.conf
---------

**autoupdater.branch: optional**
- Enables the autoupdater by default on the specifyed branch

**autoupdater.branches.$name.name:**
- Branch name, has to be same as $name

**autoupdater.branches.$name.mirrors:**
There are various patterns which can be used in the URLs
- `%n` is replaced by the OpenWrt version codename
- `%v` is replaced by the OpenWrt version number
- `%S` is replaced by the target architecture
- `%GS` is replaced by the Gluon site code
- `%GV` is replaced by the Gluon version
- `%GR` is replaced by the Gluon release

**autoupdater.branches.$name.good_signatures:**
- Number of signatures needed to validate an update

**autoupdater.branches.$name.pubkeys:**
- Public keys for signature validation

### example
```lua
{
  autoupdater = {
    branch = 'stable',
    branches = {
      stable = {
        name = 'stable',
        mirrors = { 'http://firmware.ffho.net/%GS/stable' },
        good_signatures = 2,
        pubkeys = {
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', -- Alice
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', -- Bob
        },
      },
      ...
    },
  },
  ...
},
```
