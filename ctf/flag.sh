#!/bin/sh
# Places the player's flag (CTF_FLAG_MAIN, given by the launcher) where the weakness
# reaches it; without one (CI, a run by hand) the development flag.
dev='FLAG{dev-vulhub-php-xdebug-rce}'
printf '%s\n' "${CTF_FLAG_MAIN:-$dev}" > /ctf/flag
chmod 444 /ctf/flag
