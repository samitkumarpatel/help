### Generate self sign ssl certificate

[click here to more details ](https://github.com/Azure/azure-xplat-cli/wiki/Getting-Self-Signed-SSL-Certificates-(.pem-and-.pfx))

```
Openssl
Install openssl package for your operating system from here

Generating a private key: openssl genrsa 2048 > private.pem

Generating the self signed certificate: openssl req -x509 -new -key private.pem -out public.pem

If required, creating PFX: openssl pkcs12 -export -in public.pem -inkey private.pem -out mycert.pfx
```
