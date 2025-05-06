In Linux, the `dig` command is used to query DNS name servers and get information about domain names, IP addresses, and other DNS records.

The basic usage is simply `dig hostname`. By default, `dig` tries to look up the 'A' record (IPv4 address) for the specified hostname using the DNS servers configured on your system.

**Basic usage: Looking up a hostname (A record):**
Look up the IPv4 address(es) for a hostname like google.com.

`dig google.com`{{execute}}
# The output is structured into several sections:
# - Header: Includes dig version, global options, status of the query (e.g., NOERROR), etc.
# - QUESTION SECTION: Shows the query that was made (hostname, record type, class).
# - ANSWER SECTION: Contains the requested DNS records (e.g., A, AAAA, MX records found for the query).
# - AUTHORITY SECTION: Lists the authoritative name servers for the domain.
# - ADDITIONAL SECTION: Contains related information (like IP addresses for the authoritative name servers).
# - STATS SECTION: Query statistics (query time, server used, when the query was sent, etc.).

Here are some highly used options and common ways to use `dig`:

1.  **Querying a specific DNS Server:**
    You can specify the IP address or hostname of the DNS server you want to use for the query by prefixing it with `@`.

    `# Look up google.com using Google's public DNS server (8.8.8.8)`
    `dig @8.8.8.8 google.com`{{execute}}

    `# Look up google.com using its own name server (if you know one, e.g., ns1.google.com)`
    `dig @ns1.google.com google.com`{{execute}}

2.  **Querying for Specific Record Types:**
    You can specify the type of DNS record you want to look up (e.g., `A`, `AAAA`, `MX`, `NS`, `TXT`, `CNAME`, `ANY`) by adding the type after the hostname.

    `# Look up Mail Exchanger (MX) records for example.com`
    `dig example.com MX`{{execute}}

    `# Look up Name Server (NS) records for example.com`
    `dig example.com NS`{{execute}}

    `# Look up AAAA (IPv6) records for a hostname`
    `dig ipv6.google.com AAAA`{{execute}}

3.  **`-x IP_address` (Reverse DNS Lookup)**
    Performs a reverse DNS lookup (IP address to hostname). This is often considered clearer than using `nslookup` for reverse lookups.

    `# Perform a reverse DNS lookup for the IP 8.8.8.8`
    `dig -x 8.8.8.8`{{execute}} # Looks up the PTR record for the IP

4.  **`+short` (Concise Output)**
    This option provides a concise output, showing only the answer data without the header, question, authority, or stats sections. This is extremely useful for scripting.

    `dig +short google.com`{{execute}} # Prints only the IP addresses (A records)

    `dig +short example.com MX`{{execute}} # Prints only the MX record data

5.  **`+trace` (Trace Delegation Path)**
    Traces the delegation path from the root name servers to the authoritative name servers for the queried domain. This shows you the sequence of DNS servers that are involved in resolving the name and can help diagnose delegation issues.

    `dig +trace example.com`{{execute}} # Shows the trace of the DNS query

The `dig` command is the go-to tool for DNS diagnostics in Linux, providing detailed information about DNS records, allowing queries to specific servers, and offering options for controlling output and behavior to suit various troubleshooting needs.
