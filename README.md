# docker-cfssl

Alpine based Docker image with CloudFlare [cfssl tools](https://github.com/cloudflare/cfssl) installed.

## Running

Switch to directory with the cert you wish to check, then run

```bash
docker run --rm -it -v "$PWD:/home/go/workdir" ghcr.io/alastairhm/docker-cfssl certinfo -cert <cert file>
```

To run one of the other tools listed below.

```bash
$ tree bin
bin
├── cfssl
├── cfssl-bundle
├── cfssl-certinfo
├── cfssl-newkey
├── cfssl-scan
├── cfssljson
├── mkbundle
└── multirootca
```

Override the default entrypoint with;

```bash
docker run --rm -it -v "$PWD:/home/go/workdir" --entrypoint=/bin/<tool name> ghcr.io/alastairhm/docker-cfssl -h
```

For example;

```bash
🕙 [ 08:52:42 ] ➜ docker run --rm -it -v "$PWD:/home/go/workdir" --entrypoint=/bin/cfssl-certinfo ghcr.io/alastairhm/docker-cfssl -h
	cfssl-certinfo -- output certinfo about the given cert

	Usage of certinfo:
		- Data from local certificate files
        	certinfo -cert file
		- Data from certificate from remote server.
        	certinfo -domain domain_name
		- Data from CA storage
        	certinfo -serial serial_number -aki authority_key_id (requires -db-config)

	Flags:
	  -aki="": certificate issuer (authority) key identifier
  -cert="": Client certificate that contains the public key
  -db-config="": certificate db configuration file
  -domain="": remote server domain name
  -serial="": certificate serial number
```

```text
          _    _ __  __ 
    /\   | |  | |  \/  | Email   : alastair@montgomery.me.uk
   /  \  | |__| | \  / | Web     : https://blog.0x32.co.uk/
  / /\ \ |  __  | |\/| | Twitter : @alastair_hm
 / ____ \| |  | | |  | |
/_/    \_\_|  |_|_|  |_| (c) 2021
```
