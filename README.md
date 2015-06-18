
```shell-session
$ docker build -t minecraft-base .
```

## Vanilla

```
$ docker build -t minecraft-vanilla -f Dockerfile-vanilla .
$ docker run -t minecraft-vanilla
```

## Minecraft Forge

<http://www.minecraftforge.net/wiki/Installation/Universal>

```
$ docker build -t minecraft-forge -f Dockerfile-forge .
$ docker run -t minecraft-forge
```
