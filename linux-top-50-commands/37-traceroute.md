In Linux and other Unix-like operating systems, the `traceroute` command traces the path packets take to a network host and reports the hops along the way.

The basic usage is `traceroute hostname_or_IP_address`.

`traceroute 8.8.8.8`{{execute}}
# Or
`traceroute google.com`{{execute}}
#
# Typical output shows a list of hops (routers). For each hop, it shows:
# - The hop number (starting from 1)
# - The IP address and often the hostname of the router at that hop
# - The round-trip time (RTT) for probing that hop, usually shown for 3 probes by default.
#
# Example Output Line:
# 3  router.example.com (192.168.10.1)  15.345 ms  16.123 ms  15.876 ms
#
# Asterisks (*) indicate that no response was received for a probe.
# If the trace reaches the destination, it will show the destination host and its RTT.

Here are some highly used options for `traceroute` that control its behavior and output:

1.  **`-I` (Use ICMP echo requests)**
    By default, `traceroute` often uses UDP datagrams. The `-I` option tells it to use ICMP Echo Request packets (like those used by `ping`) instead. This can sometimes yield different results or succeed where UDP is blocked by firewalls. Often requires root privileges.

    `sudo traceroute -I 8.8.8.8`{{execute}}

2.  **`-T` (Use TCP SYN packets)**
    Uses TCP SYN packets to send probes. This is useful for tracing the path to a specific port (using `-p`) and can sometimes traverse firewalls that might block UDP or ICMP. Requires root privileges.

    `# Trace using TCP SYN packets to port 80`
    `sudo traceroute -T -p 80 google.com`{{execute}}

3.  **`-n` (Do not resolve hostnames)**
    Prevents `traceroute` from performing DNS lookups to resolve the IP addresses of the hops into hostnames. This makes the output faster and can be useful if DNS resolution is slow or failing.

    `traceroute -n 8.8.8.8`{{execute}} # Shows only IP addresses for hops

4.  **`-w TIMEOUT` (Probe timeout)**
    Sets the time `TIMEOUT` (in seconds) to wait for a response from a hop's probe before considering it lost and printing an asterisk. Useful for tracing across slower or less reliable links.

    `# Wait up to 2 seconds for a response from each probe`
    `traceroute -w 2 google.com`{{execute}}

5.  **`-q NQUERIES` (Number of probes per hop)**
    Specifies the number of probes (`NQUERIES`) to send to each hop. The default is usually 3. Sending more probes can give a better average RTT and help identify packet loss at a specific hop.

    `# Send 5 probes to each hop`
    `traceroute -q 5 8.8.8.8`{{execute}}

6.  **`-m MAX_TTL` (Maximum hops)**
    Sets the maximum number of hops (Time To Live) to probe. The trace will stop after reaching this many hops, even if it hasn't reached the destination. Useful for limiting how far the trace goes.

    `# Trace a maximum of 10 hops`
    `traceroute -m 10 google.com`{{execute}}

The `traceroute` command is an essential tool for network troubleshooting, helping pinpoint exactly where connectivity issues or significant latency occur between your system and any host on the network. Using options like `-n`, `-w`, and `-q` can refine the output and aid in diagnosis.
