

## Building docker build image
```bash
docker build -t xen_build -f Dockerfile .
```

## Running the docker build image
```bash
sharedfolder="/sync"
sudo docker run --rm -v $sharedfolder:/mnt -it --name building_xen xen_build /bin/bash
```

## Building on ubuntu guide
https://blog.werk21.de/en/2018/02/08/build-xen-hypervisor-410-411-and-xen-tools-ubuntu-1604-or-1804-pvh
