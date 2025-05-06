In Linux and other Unix-like operating systems, the `nslookup` command queries DNS servers to get information about domain names and IP addresses.

It can be used in **non-interactive mode** for single lookups or **interactive mode** for multiple queries.

**Non-Interactive Mode (Single Lookup):**
Use `nslookup` followed by the hostname or IP address you want to look up. It will use the DNS servers configured on your system (usually from `/etc/resolv.conf`) by default.

`# Look up the IP address(es) for a hostname`
`nslookup google.com`{{execute}}
# Output shows:
# - The server that answered the query (your default DNS server).
# - The address(es) for the requested hostname (A records for IPv4, AAAA for IPv6).

`# Look up the hostname for an IP address (Reverse DNS Lookup)`
`nslookup 8.8.8.8`{{execute}}
# Output shows:
# - The server that answered the query.
# - The hostname associated with that IP address (PTR record).

**Non-Interactive with a Specific DNS Server:**
You can specify a different DNS server to use for the lookup by adding its IP or hostname as a second argument.

`# Look up google.com using Cloudflare's DNS server (1.1.1.1)`
`nslookup google.com 1.1.1.1`{{execute}}

**Interactive Mode:**
Run `nslookup` without any arguments to enter interactive mode. The prompt will change (usually to `>`). You can then type hostnames, IP addresses, or specific commands. Type `exit` to leave interactive mode.

`nslookup`{{execute}}
# Enters interactive mode. The prompt is now '>'.
# You can type commands or hostnames/IPs here:
# > google.com (then press Enter)
# > 8.8.8.8 (then press Enter)
# > exit (then press Enter to quit)

Here are some common tasks and options, focusing on useful non-interactive uses and commands within interactive mode:

1.  **Specifying Hostname/IP and Optional Server (Non-Interactive):**
    As shown in the basic examples, the most common non-interactive use is `nslookup TARGET [SERVER]`.

    `nslookup example.com`{{execute}} # Using default server
    `nslookup example.com 8.8.8.8`{{execute}} # Using Google's DNS server

2.  **`-query=TYPE` or `-type=TYPE` (Non-Interactive Type Lookup):**
    Query for specific types of DNS records (e.g., `A` for IPv4 addresses, `AAAA` for IPv6, `MX` for mail exchangers, `NS` for name servers, `TXT` for text records, `CNAME` for aliases).

    `# Find Mail Exchanger (MX) records for a domain`
    `nslookup -query=MX example.com`{{execute}}

    `# Find Name Server (NS) records for a domain`
    `nslookup -type=NS example.com`{{execute}}

3.  **`set type=TYPE` (Interactive Type Lookup):**
    Within interactive mode, you can set the type of record you want to query for subsequent lookups.

    `# In interactive mode (> prompt)`
    `# > set type=MX`
    `# > example.com` (then press Enter to get MX records)
    `# > set type=A`
    `# > example.com` (then press Enter to get A records again)

4.  **`server IP_or_hostname` (Interactive: Change DNS Server):**
    Within interactive mode, you can change the DNS server `nslookup` uses for subsequent queries.

    `# In interactive mode (> prompt)`
    `# > server 1.1.1.1` (sets Cloudflare's DNS as the current server)
    `# > google.com` (then press Enter - this query will use 1.1.1.1)

The `nslookup` command is a valuable tool for basic DNS troubleshooting, allowing you to verify DNS records and check name resolution using different servers. For more advanced DNS diagnostics, tools like `dig` are often preferred.
