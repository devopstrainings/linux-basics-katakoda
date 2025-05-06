In Linux and other Unix-like operating systems, the `telnet` command is used for interactive communication over a network, primarily to test if a service is listening and reachable on a specific TCP port.

**WARNING:** Do NOT use telnet for remote login as it is insecure. Use SSH instead.

The basic usage to test port connectivity is `telnet hostname_or_IP_address port`.

**Testing connectivity to a specific port:**
Attempt to connect to the HTTP port (port 80) on a web server (like example.com).

`telnet example.com 80`{{execute}}
# Or to an IP address and port
`telnet 93.184.216.34 80`{{execute}}
#
# Expected outcomes:
# - If successful: You'll usually see a message like "Connected to example.com." and the screen might go blank or show a prompt from the service. This means the port is open and reachable.
# - If connection fails: You'll see messages like "Connection refused", "Connection timed out", or "No route to host". This means the port is not open, not listening, or the host is unreachable.
#
# After connecting, you might see some text sent by the server. You can usually just close the connection.

**Exiting a telnet session:**
Once you are in a telnet session (after successfully connecting or if it's waiting for input), to exit and return to your shell:
1. Press `Ctrl+]` (Control key and closing square bracket). This takes you to the telnet client's command prompt.
2. At the prompt (usually just `telnet>`), type `quit` or `close` and press `Enter`.

`# Steps while inside a telnet session:`
`# Press Ctrl+]`
`# Type 'quit' and press Enter`

Here are a couple of useful options for the `telnet` client:

1.  **Specify host and port as arguments:**
    This is the standard way to use it for port checking, as shown in the basic usage above. The first argument is the target host, the second is the port number.

    `telnet localhost 22`{{execute}} # Test if SSH is running on the local machine (port 22)

2.  **`-4` or `--ipv4` / `-6` or `--ipv6` (Force IP version)**
    Force `telnet` to use either IPv4 or IPv6 to connect. Useful for testing connectivity on dual-stacked hosts (hosts with both IPv4 and IPv6 addresses).

    `# Attempt to connect using only IPv4`
    `telnet -4 example.com 80`{{execute}}

    `# Attempt to connect using only IPv6`
    `telnet -6 example.com 80`{{execute}} # Requires IPv6 connectivity and target support

While `telnet` is obsolete for its original purpose of remote login due to security risks, its client remains a quick and universally available tool on many systems for checking if a specific TCP port is open and reachable on a remote or local host.
