#!/bin/bash
#
# Title:      PlexGuide (Reference Title File)
# Author(s):  Admin9705 - Deiteq
# URL:        https://plexguide.com - http://github.plexguide.com
# GNU:        General Public License v3.0
################################################################################
program=$(cat /tmp/program_var)
domain=$(cat /var/plexguide/server.domain)
port=$(cat /tmp/program_port)
ip=$(cat /var/plexguide/server.ip)

if [ "$program" == "plex" ]; then extra="/web"; else extra=""; fi

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💎 Access Configuration Info > http://$program.plexguide.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

▫ $ip:${port}${extra}
EOF

if [ "$domain" != "NOT-SET" ]; then
tee <<-EOF
▫ $domain:${port}${extra}
▫ $program.$domain${extra}
EOF
fi
