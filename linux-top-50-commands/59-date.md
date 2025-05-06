In Linux and other Unix-like operating systems, the `date` command is used to display or set the system date and time.

The basic usage is simply `date`.

`date`{{execute}}
# The default output format typically includes the day of the week, month, day, time, timezone, and year.
# Example Output:
# Sat May 4 15:04:24 IST 2025

The real power of the `date` command for displaying comes from its ability to use **format strings** to control exactly how the date and time are shown. You provide the format string preceded by a plus sign `+`.

**Using Format Strings (`date +FORMAT_STRING`):**
Format strings consist of literal text and format directives (starting with `%`).

* `%Y`: Year (e.g., 2025)
* `%m`: Month as a zero-padded decimal number (01-12)
* `%d`: Day of the month as a zero-padded decimal number (01-31)
* `%H`: Hour (00-23)
* `%M`: Minute (00-59)
* `%S`: Second (00-60)
* `%A`: Full weekday name (e.g., Saturday)
* `%B`: Full month name (e.g., May)
* `%F`: Full date in YYYY-MM-DD format (shortcut for `%Y-%m-%d`)
* `%T`: Time in HH:MM:SS format (shortcut for `%H:%M:%S`)
* `%Z`: Time zone (e.g., IST)

You can combine these with literal text.

`# Display date in YYYY-MM-DD HH:MM:SS format`
`date +%F\ %T`{{execute}} # Note the space between %F and %T needs escaping or quoting

`# Display like "Today is Saturday, May 4, 2025"`
`date +"Today is %A, %B %d, %Y"`{{execute}}

Here are some highly used options for `date`:

1.  **`-d STRING` or `--date=STRING` (Display specified date)**
    Displays the date and time specified by `STRING` instead of the current system time. `STRING` can be an absolute date/time or a relative string like "tomorrow", "yesterday", "next Monday", "last week", "1 hour ago", "next year".

    `# Display the date for tomorrow`
    `date -d "tomorrow"`{{execute}}

    `# Display the date for next Monday in YYYY-MM-DD format`
    `date -d "next Monday" +%F`{{execute}}

    `# Display the date from one month ago`
    `date -d "1 month ago"`{{execute}}

    `# Display a specific date and time`
    `date -d "2024-12-25 10:30"`{{execute}}

2.  **`-u` or `--utc` or `--universal` (Display/set UTC)**
    Displays or sets the date and time in UTC (Coordinated Universal Time) instead of the local timezone.

    `date -u`{{execute}} # Display current time in UTC

    `date -u +"%Y-%m-%d %H:%M:%S Z"`{{execute}} # Display UTC in a specific format

3.  **`-s STRING` or `--set=STRING` (Set system date/time)**
    **WARNING:** This option sets the system date and time. It requires root privileges (`sudo`). Use with caution as changing the system clock can affect many processes.

    `# Set the system date and time (example - requires sudo)`
    `# sudo date -s "2025-01-30 14:00"`{{execute}}

The `date` command is a fundamental tool for working with system time. Its main use is displaying the current date and time, with the `+FORMAT_STRING` and `-d STRING` options providing immense flexibility in how dates are displayed and calculated. Setting the date (`-s`) is an administrative task requiring root.
