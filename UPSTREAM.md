# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `php/xdebug-rce` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `build/xdebug2/app/` | [`php/xdebug-rce`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/php/xdebug-rce) |
| `base/php/7.1-xdebug/` | [`base/php/7.1-xdebug`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/php/7.1-xdebug): the Dockerfile of `vulhub/php:7.1-xdebug` |
| `base/php/7.4-xdebug/` | [`base/php/7.4-xdebug`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/php/7.4-xdebug): the Dockerfile of `vulhub/php:7.4-xdebug` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published images `vulhub/php:7.1-xdebug` and `vulhub/php:7.4-xdebug`, pinned by tag (as Vulhub's own compose file does); their Dockerfiles are vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

`build/xdebug2/Dockerfile` and `build/xdebug3/Dockerfile` start from those images and copy in `index.php`, which Vulhub's compose file mounts (Isoloom has no bind mounts). `build/xdebug3/index.php` is an unchanged copy of the vendored `index.php`: the second build context can't reach the first one's folder. The exploit script (`exp.py`) is vendored and not used by the lab.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
