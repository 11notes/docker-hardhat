# Alpine :: Hardhat
Run a Hardhat Node based on Alpine Linux. Small, lightweight, secure and fast 🏔️

## Volumes
* **/hardhat/etc** - Directory of default.js configuration

## Run
```shell
docker run --name hardhat \
  -v ../etc:/hardhat/etc \
  -d 11notes/hardhat:[tag]
```

## Defaults
| Parameter | Value | Description |
| --- | --- | --- |
| `user` | docker | user docker |
| `uid` | 1000 | user id 1000 |
| `gid` | 1000 | group id 1000 |

## Parent
* [11notes/node:stable](https://github.com/11notes/docker-node)

## Built with
* [hardhat](https://hardhat.org)
* [nginx](https://nginx.org)
* [Alpine Linux](https://alpinelinux.org)

## Tips
* Don't bind to ports < 1024 (requires root), use NAT/reverse proxy
* [Permanent Storage](https://github.com/11notes/alpine-docker-netshare) - Module to store permanent container data via NFS/CIFS and more