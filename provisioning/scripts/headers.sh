#!/bin/bash
curl -k -H 'Content-Type: application/json' -XPATCH --user admin:ansible -d @rm_host_headers.json https://tower.ansible.com/api/v2/settings/system/
