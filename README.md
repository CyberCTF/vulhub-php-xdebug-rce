# PHP XDebug Remote Debugging Code Execution

[Vulhub](https://vulhub.org)'s [`php/xdebug-rce`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/php/xdebug-rce) environment, by
phith0n and the Vulhub contributors: two PHP sites with XDebug remote debugging on (XDebug 2.5.5 on PHP 7.1, XDebug 3.1.6 on PHP 7.4), which connect back to whoever triggers a debug session and run what that debugger sends. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, and
the machines run Vulhub's published images `vulhub/php:7.1-xdebug` and `vulhub/php:7.4-xdebug` with `index.php` copied in ([`build/`](build)); the environment folder is vendored in [`build/xdebug2/app/`](build/xdebug2/app) and the images' Dockerfiles in [`base/`](base).

| Machine | Service |
| --- | --- |
| xdebug2 | PHP 7.1 with XDebug 2.5.5 on port 80, published as 8080 |
| xdebug3 | PHP 7.4 with XDebug 3.1.6 on port 80, published as 8081 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/ (XDebug 2) and http://localhost:8081/ (XDebug 3). The debugger connection goes from the target back to the player, so the lab network keeps its way out. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/php/xdebug-rce/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
