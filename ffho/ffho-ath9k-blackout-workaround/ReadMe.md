ffho-ath9k-blackout-workaround
==============================

In order to avoid further WiFi-Blackouts that *might* be caused by buggy ath9k,
we try to detect problems and restart the wifi.

site.conf
---------

**ath9k-workaround.blackout_wait:**
- minimum delay to detect a possible blackout as blackout

**ath9k-workaround.reset_wait:**
- minimum delay between reset

**ath9k-workaround.step_size**
- execute the cronjob each x minutes

### example
```lua
{
  ath9k-workaround = {
    blackout_wait = 720,
    reset_wait = 1440,
    step_size = 10,
  },
  ...
},
```
