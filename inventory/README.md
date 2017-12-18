# Inventory

A directory that will be consumed then Ansible is applied to a static set
of infrastructure.

Ideally, a dynamic inventory plugin will be utilized, but if
this is not available, FQDNs and their overarching groups should be stored and
managed with inventory files (env.ini).
