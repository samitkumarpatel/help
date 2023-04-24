## Json Web

- JWT - [JSON Web Token](https://datatracker.ietf.org/doc/html/rfc7519)

A JWT (JSON Web Token) is a compact, URL-safe means of representing claims to be transferred between two parties. It consists of three parts separated by dots .:

```
{header}.{payload}.{signature}

```
- JWS - [JSON Web Signature](https://datatracker.ietf.org/doc/html/rfc7515)

JWS (JSON Web Signature) is a JSON-based format for signing data using JSON data structures. It consists of three parts separated by dots .:

```
{header}.{payload}.{signature}
```

- JWE - [JSON Web Encryption](https://datatracker.ietf.org/doc/html/rfc7516)

JWE (JSON Web Encryption) is a JSON-based format for encrypting data using JSON data structures. It consists of five parts separated by dots .:

```
{header}.{encrypted key}.{initialization vector}.{ciphertext}.{authentication tag}
```

- JWK - [JSON Web Key](https://datatracker.ietf.org/doc/html/rfc7517)

A JWK (JSON Web Key) is a JSON object that represents a cryptographic key. It consists of several parameters that describe the key. Here's an example of a JWK object:

```
{
  "kty": "RSA",
  "kid": "e9bc097a-ce51-4036-9562-d2ade882db0d",
  "use": "sig",
  "alg": "RS256",
  "n": "......",
  "e": "AQAB",
  "d": ".......",
  "p": "....."
}

```
where :
>"kty": This specifies the key type, in this case, it is an RSA key.

>"kid": This is a unique identifier for the key. It can be any string, but it should be unique within the context in which it is used.

>"use": This field indicates how the key is intended to be used. In this example, it is being used for signing (indicated by the "sig" value).

>"n": This is the modulus of the RSA key, represented as a base64url-encoded string. It is used in combination with the exponent ("e") to create the public key.

>"e": This is the exponent of the RSA key, represented as a base64url-encoded string. It is used in combination with the modulus ("n") to create the public key.

>"d": This is the private exponent of the RSA key, represented as a base64url-encoded string. It is used to generate digital signatures and decrypt encrypted data.

- JWA - [JSON Web Algorithms](https://datatracker.ietf.org/doc/html/rfc7518)

JWA (JSON Web Algorithms) defines a set of cryptographic algorithms that can be used in JWT, JWS, and JWE.

The JWA specification defines the following fields for each algorithm:

>"alg": The name of the algorithm used to sign or encrypt the data. For example, "HS256" for HMAC-SHA256 or "RSA-OAEP" for RSA-OAEP encryption.

>"typ": The type of the data being signed or encrypted. For example, "JWT" for a JWT token or 

>"JWE" for an encrypted JWT.

>"cty": The content type of the data being signed or encrypted. For example, "application/json" or "text/plain".

>"crit": An array of critical headers that must be understood by the recipient. For example, ["alg", "kid"].

```
{
  "alg": "HS256",
  "typ": "JWT"
}

```