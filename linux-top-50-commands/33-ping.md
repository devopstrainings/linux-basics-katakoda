In Linux and other Unix-like operating systems, the `ping` command sends packets to a network host and displays the responses, indicating whether the host is reachable and how long it takes to communicate with it.

The basic usage is `ping hostname_or_IP_address`. On Linux systems, `ping` runs continuously by default until you stop it. On some other operating systems (like Windows), it sends a fixed number of packets (e.g., 4).

**Basic usage: Ping a host continuously:**
Ping Google's public DNS server (8.8.8.8) or a domain name (like google.com). The command will run until you press `Ctrl+C`.

`ping 8.8.8.8`{{execute}}
# Or
`ping google.com`{{execute}}
#
# Output for each received reply shows:
# - Source IP address
# - icmp_seq: Sequence number of the packet
# - ttl: Time To Live (number of hops the packet can still travel)
# - time: Round-trip time in milliseconds (ms)
#
# Press `Ctrl+C` to stop the ping command.

When you stop `ping` with `Ctrl+C`, it displays a summary of the statistics:

* Number of packets transmitted
* Number of packets received
* Percentage of packet loss
* Round-trip time statistics (minimum, average, maximum, and standard deviation/mdev)

Here are some highly used options for `ping`:

1.  **`-c COUNT` (Stop after count)**
    This is a very common option, especially on systems where `ping` runs continuously. It tells `ping` to send only `COUNT` number of packets and then stop.

    `# Send 5 packets to 8.8.8.8 and then stop`
    `ping -c 5 8.8.8.8`{{execute}}

2.  **`-i INTERVAL` (Interval)**
    Sets the time `INTERVAL` (in seconds) to wait between sending each packet. The default is usually 1 second. You might use a smaller interval for rapid testing or a larger one to reduce network traffic. Requires root privileges or specific capabilities on some systems for very small intervals.

    `# Send 10 packets with a 0.5-second interval`
    `ping -c 10 -i 0.5 8.8.8.8`{{execute}}

3.  **`-s PACKETSIZE` (Packet size)**
    Specifies the number of data bytes to be sent in each ICMP packet's payload. The default is typically 56 bytes (resulting in 64 bytes on the wire including the ICMP header).

    `# Send 4 packets with a payload size of 1000 bytes`
    `ping -c 4 -s 1000 8.8.8.8`{{execute}}

4.  **`-W TIMEOUT` (Timeout)**
    Sets the time `TIMEOUT` (in seconds) that `ping` will wait for a response for *each individual packet*. If a response is not received within this time, the packet is considered lost. This is different from the total timeout for the entire command.

    `# Send 3 packets, waiting a maximum of 1 second for each reply`
    `ping -c 3 -W 1 192.168.99.99`{{execute}} # Use an IP you expect might not respond quickly or at all

5.  **`-q` (Quiet output)**
    Suppresses the detailed output for each packet and only shows the summary statistics when the command finishes. Useful for scripting when you only need the final results.

    `ping -c 5 -q 8.8.8.8`{{execute}} # Only displays the 5-packet summary

The `ping` command is an essential first step in troubleshooting network connectivity issues, quickly telling you if a host is reachable and providing an estimate of the network latency and reliability.
