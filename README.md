Minecraft server manager with tmux.

# Usage

```shell-session
$ ./minecraft-manager

Usage ./minecraft-manager <command>

Commands:
  status      Display server status
  start       Start server
  stop        Stop  server
  backup      Start backup server data

Minecraft server data under the /tmp by default,
but you can specify it with `DATA_DIR` environment
such as `DATA_DIR=/var/minecraft ./minecraft-manager start`
```

## Minecraft Forge

<http://www.minecraftforge.net/wiki/Installation/Universal>

Save `forge-*.jar` and put jars as below.

```
$ tree -F -L 1 ./jar
./jar
├── forge-1.8-11.14.3.1450-installer.jar
├── forge-1.8-11.14.3.1450-installer.jar.log
├── forge-1.8-11.14.3.1450-universal.jar
├── libraries/
└── minecraft_server.1.8.jar

1 directory, 4 files
```

Then start a server.

```
$ JAR=forge-1.8-11.14.3.1450-universal.jar ./minecraft-manager start
```
