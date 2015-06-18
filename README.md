Minecraft server manager with tmux and Docker.

# Usage

```shell-session
$ ./minecraft-manager

Usage ./minecraft-manager <command>

Commands:
  status      Display forge server status
  start       Start forge server
  stop        Stop  forge server
  backup      Start backup forge server data
  build       Build Docker image for forge

Minecraft server data under the /tmp by default,
but you can specify it with `DATA_DIR` environment
such as `DATA_DIR=/var/minecraft ./minecraft-manager start`
```

## Minecraft Forge

<http://www.minecraftforge.net/wiki/Installation/Universal>

Management with `SESS=forge` (default)

```
$ SESS=forge ./minecraft-manager build
$ SESS=forge ./minecraft-manager start
```

## Vanilla

Management with `SESS=vanilla`.

```shell-session
$ SESS=vanilla ./minecraft-manager build
$ SESS=vanilla ./minecraft-manager start
```
