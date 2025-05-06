In Linux and other Unix-like operating systems, the `uniq` command is used to process **adjacent** duplicate lines. It reads input, compares adjacent lines, and outputs lines based on whether they are unique or repeated.

The basic usage is `uniq file(s)`. If a sequence of identical lines appears, `uniq` by default prints only one copy of the line.

**Basic usage: Filtering adjacent duplicates:**
Filter a file where duplicate lines are already adjacent.

`echo -e "apple\napple\nbanana\nbanana\nbanana\norange" > sorted_dupes.txt`{{execute}}
`uniq sorted_dupes.txt`{{execute}} # Prints only one of each adjacent duplicate

**Why sorting first is important:**
If duplicate lines are not adjacent, `uniq` will not filter them out. You must sort the data first.

`echo -e "apple\nbanana\napple\norange\nbanana" > unsorted_dupes.txt`{{execute}}
`uniq unsorted_dupes.txt`{{execute}} # Does NOT filter the non-adjacent duplicates

`# Correct way: Sort first, then use uniq`
`sort unsorted_dupes.txt | uniq`{{execute}} # Sorts and then filters all duplicates

Here are some highly used options for `uniq`:

1.  **`-c` (Count occurrences)**
    Prefixes each output line with the number of times it occurred in the input group of adjacent lines.

    `uniq -c sorted_dupes.txt`{{execute}} # Counts adjacent duplicates

    `# With sort and uniq -c to count all occurrences in the file`
    `sort unsorted_dupes.txt | uniq -c`{{execute}} # Counts all duplicates after sorting

2.  **`-d` (Only print duplicated lines)**
    Only prints lines that appear more than once as adjacent duplicates. For each group of adjacent duplicates, it prints only one instance of the line.

    `uniq -d sorted_dupes.txt`{{execute}} # Prints only the lines that had adjacent duplicates

    `# With sort and uniq -d`
    `sort unsorted_dupes.txt | uniq -d`{{execute}} # Prints lines that appeared more than once in the whole file

3.  **`-u` (Only print unique lines)**
    Only prints lines that are unique, meaning they do not have any adjacent duplicates.

    `echo -e "apple\nbanana\nbanana\norange\ngrape\ngrape" > unique_test.txt`{{execute}}
    `uniq -u unique_test.txt`{{execute}} # Prints 'apple' and 'orange'

    `# With sort and uniq -u`
    `sort unique_test.txt | uniq -u`{{execute}} # Prints lines that appeared exactly once in the whole file

4.  **`-D` (Print all duplicate lines)**
    Similar to `-d`, but instead of printing just one instance, it prints *all* lines that are part of an adjacent duplicate group.

    `uniq -D sorted_dupes.txt`{{execute}} # Prints 'apple' twice, 'banana' three times

    `# With sort and uniq -D`
    `sort unsorted_dupes.txt | uniq -D`{{execute}} # Prints all lines that had duplicates after sorting

5.  **`-i` (Ignore case)**
    Ignores differences in case when comparing adjacent lines for uniqueness.

    `echo -e "Apple\napple\nBanana\norange" > case_dupes.txt`{{execute}}
    `uniq case_dupes.txt`{{execute}} # Case-sensitive (no duplicates found)
    `uniq -i case_dupes.txt`{{execute}} # Case-insensitive (filters 'apple')

6.  **`-f NUM` (Skip fields)**
    Ignores the first `NUM` fields on a line when comparing lines for uniqueness. Fields are separated by whitespace by default.

    `echo -e "ID: 001 Data: ABC\nID: 002 Data: XYZ\nID: 002 Data: PQR" > field_dupes.txt`{{execute}}
    `# Treat lines as unique even if the first two fields match, compare based on subsequent fields`
    `uniq -f 2 field_dupes.txt`{{execute}} # Skips "ID: 001", "ID: 002" and compares "Data: ..." resulting in all lines being printed

    Note: For custom delimiters with `-f`, you often need to pre-process with `awk` or `sed` to use a standard whitespace delimiter, or handle it within the `sort` command before piping to `uniq`.

The `uniq` command is primarily used in conjunction with `sort` to effectively process and analyze duplicate lines within text data, offering flexible options for counting or filtering based on uniqueness.
