# domain name

A domain name normally looks like this : `samitkumarpatel.com` 
  - `samitkumarpatel` domain name under `com` directory.

A domain can have subdomain like
  - `api.samitkumarpatel.com`
  - `www.samitkumarpatel.com`
  - `x.samitkumarpatel.com`
and each `subdomain` can point to different record type.

These are the supported record type with their purpose


### A (Address Record)
- **Purpose**: Maps a domain name to an IPv4 address.
- **Usage**: Directs traffic to the correct server based on the domain name.
- **Example**: `example.com` -> `192.0.2.1`

### AAAA (IPv6 Address Record)
- **Purpose**: Maps a domain name to an IPv6 address.
- **Usage**: Similar to A records but for IPv6 addresses.
- **Example**: `example.com` -> `2001:0db8:85a3:0000:0000:8a2e:0370:7334`

### CNAME (Canonical Name Record)
- **Purpose**: Aliases one domain name to another.
- **Usage**: Useful for pointing multiple domain names to the same IP address without needing multiple A or AAAA records.
- **Example**: `www.example.com` -> `example.com`

### MX (Mail Exchange Record)
- **Purpose**: Directs email to mail servers for a domain.
- **Usage**: Specifies the mail servers responsible for receiving email on behalf of a domain.
- **Example**: `example.com` -> `mail.example.com` with priority values.

### NS (Name Server Record)
- **Purpose**: Specifies the authoritative name servers for a domain.
- **Usage**: Indicates which servers are responsible for DNS queries for the domain.
- **Example**: `example.com` -> `ns1.example.com`

### TXT (Text Record)
- **Purpose**: Stores text information.
- **Usage**: Often used for verification purposes, such as SPF (Sender Policy Framework) records for email validation.
- **Example**: `example.com` -> `"v=spf1 include:_spf.example.com ~all"`

### PTR (Pointer Record)
- **Purpose**: Maps an IP address to a domain name (reverse DNS lookup).
- **Usage**: Used for reverse DNS lookups to verify the domain name associated with an IP address.
- **Example**: `192.0.2.1` -> `example.com`

### SOA Start of Authority Record)
- **Purpose**: Contains administrative information about the domain.
- **Usage**: Specifies the primary name server, email of the domain administrator, domain serial number, and timers for zone transfers.
- **Example**: `example.com` -> `ns1.example.com admin.example.com 2024010101 3600 1800 1209600 3600`

### SRV (Service Locator Record)
- **Purpose**: Specifies the location of services.
- **Usage**: Used to define the location of servers for specific services, such as SIP or LDAP.
- **Example**: `_sip._tcp.example.com` -> `sipserver.example.com`

### CAA (Certification Authority Authorization Record)
- **Purpose**: Specifies which certificate authorities (CAs) are allowed to issue certificates for a domain.
- **Usage**: Enhances security by restricting which CAs can issue SSL/TLS certificates for the domain.
- **Example**: `example.com` -> `0 issue "letsencrypt.org"`

## When to Use Each Record Type
- **A and AAAA Records**: Map domain names to IP addresses for web hosting and other services.
- **CNAME Records**: Alias one domain name to another, simplifying DNS management.
- **MX Records**: Direct email traffic to the correct mail servers.
- **NS Records**: Delegate DNS authority to specific name servers.
- **TXT Records**: Store various text-based information, including email verification and security policies.
- **PTR Records**: Perform reverse DNS lookups, often required for email server verification.
- **SOA Records**: Define administrative details and zone transfer settings for a domain.
- **SRV Records**: Specify the location of specific services within a domain.
- **CAA Records**: Control which CAs can issue certificates for your domain, enhancing security.


  
