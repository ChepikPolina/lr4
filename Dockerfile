FROM ubuntu:16.04

RUN apt update
RUN apt install -yy gcc g++ cmake 

COPY . demo/
WORKDIR demo

RUN cmake -H. -B_build 
RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build
RUN cmake --build _build --target install
RUN cmake --build _build --target demo
RUN cmake --build _build --target test
RUN cmake --build _build --target example2
RUN cmake --build _build --target main
RUN cmake --build _build --target print

ENV LOG_PATH /home/logs/log.txt

VOLUME /home/logs

WORKDIR _install/bin
WORKDIR _build

CMD ./demo

# geminishkv & nei
