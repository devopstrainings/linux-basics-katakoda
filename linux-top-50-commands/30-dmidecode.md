In Linux and other Unix-like operating systems, the `dmidecode` command is used to read hardware information directly from the system's BIOS/UEFI. Because it accesses system hardware information, it usually requires elevated privileges (e.g., using `sudo`).

The basic usage is simply `dmidecode`.

`sudo dmidecode`{{execute}}
# This command will output a large amount of detailed information about your system's hardware,
# structured into different sections (BIOS, System, Baseboard, Processor, Memory Controller, Memory Module, Cache, Connector, Chassis, etc.).

Because the full output can be very long and contain more information than you need, `dmidecode` provides options to filter the output.

Here are some highly used options for `dmidecode` to get specific information:

1.  **`-s keyword` or `--string keyword` (Print a specific string)**
    This option allows you to extract and print the value associated with a specific predefined `keyword`. This is very useful for quickly getting a single piece of information like the serial number or BIOS version. Common keywords include `system-serial-number`, `bios-version`, `baseboard-product-name`, `processor-version`.

    `# Get the system's serial number`
    `sudo dmidecode -s system-serial-number`{{execute}}

    `# Get the BIOS version`
    `sudo dmidecode -s bios-version`{{execute}}

2.  **`-t type` or `--type type` (Filter by DMI type)**
    The DMI information is organized into different types, each representing a specific hardware component or system aspect. This option allows you to display information for only a specific `type`. The `type` can be a number or a keyword. Common types include:
    * `0` or `bios`
    * `1` or `system`
    * `2` or `baseboard`
    * `4` or `processor`
    * `17` or `memory`
    * `3` or `chassis`

    `# Display only BIOS information`
    `sudo dmidecode -t bios`{{execute}}

    `# Display only Memory Device information (Type 17)`
    `sudo dmidecode -t 17`{{execute}}

    `# Display only processor information`
    `sudo dmidecode -t processor`{{execute}}

You can combine options, for example, to get specific information from a specific type, although `-s` is often sufficient for common string values.

The `dmidecode` command is invaluable for gathering detailed hardware specifications of a system directly from the BIOS, which is essential for inventory, troubleshooting, and support purposes. Remember that you typically need `sudo` to run it successfully.
