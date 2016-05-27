ffho-aptimer
============

Timer for the client wifi

/etc/config/aptimer
-------------------
```
config aptimer 'settings'
        option enabled '1'
        option type '$type'

config $type '$day'
        list on '06:00'
        list off '23:00'
```

**$type=day**
- $day=all

**$type=week**
- $day=[Mon|Tue|Wed|Thu|Fri|Sat|Sun]

**$type=month**
- $day=[01-31]
