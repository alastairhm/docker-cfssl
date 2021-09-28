# docker-cfssl

Alpine based Docker image with cfssl tools installed

## Running

Switch to terraform directory you wish to check, then run

```bash
docker run --rm -it -v "$PWD:/home/go/workdir" ghcr.io/alastairhm/docker-cfssl certinfo -cert <cert file>
```

```text
          _    _ __  __ 
    /\   | |  | |  \/  | Email   : alastair@montgomery.me.uk
   /  \  | |__| | \  / | Web     : https://blog.0x32.co.uk/
  / /\ \ |  __  | |\/| | Twitter : @alastair_hm
 / ____ \| |  | | |  | |
/_/    \_\_|  |_|_|  |_| (c) 2021
```
