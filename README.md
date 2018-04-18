
#  Demo program for RK2 [![Build Status](https://travis-ci.org/Neisoweli/lr4.svg?branch=master)](https://travis-ci.org/Neisoweli/lr4)

This program displays the value of the environment variable NAME if it exists. 


## RK2_release_crossdev

**Edit working(Build):**
- For unix systems
```ShellSession
$ git clone https://github.com/Neisoweli/lr4 lr4
$ cd lr4
$ cmake -H. -B_builds
$ cmake --build _builds
```
- For fork crossdev:
```ShellSession
$ git pull origin master
$ git add .
$ git commit -m"..."
$ git push origin master
```
- Building tests:
```ShellSession
$ _build/check -s -r compact - smalldesccript
$ cmake --build _build --target test -- ARGS=--verbose - alldescript
```
- Init docker:
```ShellSession
$ docker build -t logger .
$ mkdir logs
$ docker run -it -v "$(pwd)/logs/:/home/logs/" logger
$ docker inspect logger
$ cat logs/log.txt
```


*Voevoda E & Shmakov I & Chepik P
BMSTU IU8*
