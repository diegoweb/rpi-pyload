pyLoad for Raspberry Pi (as Dock)
=========

pyLoad is a fast, lightweight and full featured download manager for many One-Click-Hoster, container formats like DLC, video sites or just plain http/ftp links. It aims for low hardware requirements and platform independence to be runnable on all kind of systems (desktop pc, netbook, NAS, router).
Despite its strict restriction it is packed full of features just like webinterface, captcha recognition, unrar and much more. 

pyLoad is divided into core and clients, to make it easily remote accessible. Currently there are a webinterface, command line interface, a GUI written in Qt and an Android client. Screenshots can be found [here].

Source [Official pyLoad Website]

Basic Install
----
Install is easy as all docker images

```sh
docker pull diegoweb/rpi-pyload
```

Running
----
Set your UID/GID (user in docker host who will run the container), DOWNLOAD and CONFIG folders from the example below (do not forget to remove <> for each field):
```sh
docker run -d -p 8000:8000 -p 7227:7227 -e UID=<uid> -e GID=<gid> -v <download_folder>:/opt/pyload/Downloads -v <config_folder>:/opt/pyload/pyload-config --name pyload diegoweb/rpi-pyload
```

In Raspberry Pi for example, if you are running Raspbian Default Image, you can use:
```sh
docker run -d -p 8000:8000 -p 7227:7227 -e UID=1000 -e GID=1000 -v /home/pi/downloads:/opt/pyload/Downloads -v /home/pi/pyload-config:/opt/pyload/pyload-config --name pyload diegoweb/rpi-pyload
```


Web Interface
----
After the docker has created you can login via the webinterface with:

```sh
http://<RaspberryIP>:8000/
USER=pyload
PASSWORD=pyload
```
[Official pyLoad Website]:https://pyload.net/
[here]:https://github.com/pyload/pyload/wiki/Screenshots#pyload-webinterface
