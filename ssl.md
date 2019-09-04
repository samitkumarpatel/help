### Generate self sign ssl certificate

[click here to more details ](https://github.com/Azure/azure-xplat-cli/wiki/Getting-Self-Signed-SSL-Certificates-(.pem-and-.pfx))

```
Openssl
Install openssl package for your operating system. In google search you can find your expected installation command.

Generating a private key: openssl genrsa 2048 > private.pem

Generating the self signed certificate: openssl req -x509 -new -key private.pem -out public.pem

If required, creating PFX: openssl pkcs12 -export -in public.pem -inkey private.pem -out mycert.pfx
```

### Generate ssl ceritifcate and keystore , to be used in mvn or other java related activity

Get the cerificate from a server URL
```
echo | openssl s_client -servername NAME -connect HOST:POST |\ 
  sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > test_certificate.crt
```
Generate keystor from above generate command
```
keytool -import -file test_certificate.crt -keystore maven-keystore
```
