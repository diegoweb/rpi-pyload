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

Just run the command below:
```sh
docker run -d -p 8000:8000 -p 7227:7227 -e UID=1000 -e GID=1000 -v /home/pi/downloads:/opt/pyload/Downloads -v /home/pi/pyload-config:/opt/pyload/pyload-config --name pyload diegoweb/rpi-pyload
```

What you can modify and explanation of each editable field:
* **8000:8000** -> Local access port
* **7227:7227** -> External access port
* **UID** -> User ID (set the same as you use in your host docker, default is 1000)
* **GID** -> Group ID (set the same as you use in your host docker, default is 1000)
* **/home/pi/downloads** -> This is the path to your download directory in host docker
* **/home/pi/pyload-config** -> This is the path to save the persistent config, if you need to erase or update the container, this will remain.

Web Interface
----
After the docker has created you can login via the webinterface with:

```sh
http://<RaspberryIP>:8000/
USER=pyload
PASSWORD=pyload
```

Credits and Thanks
----
This build is a fork from [mrtestone/rpi-pyload], but everyone down below is responsible to make this build to be achieved. Thank them! 

[obi12341/docker-pyload]

[dastrasmue/rpi-pyload]

[andresmoschini/rpi-pyload]

[mrtestone/rpi-pyload]


And a special thank to [pyload/pyload] contributors, you can check all extended credits of [pyLoad project here]!

[Official pyLoad Website]:https://pyload.net/
[here]:https://github.com/pyload/pyload/wiki/Screenshots#pyload-webinterface
[obi12341/docker-pyload]:https://github.com/obi12341/docker-pyload
[dastrasmue/rpi-pyload]:https://github.com/dastrasmue/rpi-pyload
[andresmoschini/rpi-pyload]:https://github.com/andresmoschini/rpi-pyload
[mrtestone/rpi-pyload]:https://github.com/mrtestone/rpi-pyload
[pyload/pyload]:https://github.com/pyload/pyload
[pyLoad project here]:https://github.com/pyload/pyload/blob/master/CREDITS.md
