In Linux and other Unix-like operating systems, the `sort` command is used to sort lines of text. It reads input, sorts the lines according to specified criteria, and writes the sorted output to standard output.

The basic usage is `sort file(s)`.

**Basic Sorting (alphabetical):**
Sort the lines of a file named 'unsorted_list.txt' alphabetically.

`echo -e "banana\napple\norange\ngrape" > unsorted_list.txt`{{execute}}
`sort unsorted_list.txt`{{execute}} # Sorts lines alphabetically

**Sorting multiple files:**
You can provide multiple filenames. `sort` will concatenate them, sort the combined content, and output the result.

`echo -e "kiwi\npear" > fruits2.txt`{{execute}}
`sort unsorted_list.txt fruits2.txt`{{execute}} # Sorts combined content

**Piping output to sort:**
`sort` is very commonly used in pipelines to sort the output of other commands.

`# List files in long format and sort by file size (ls -s output first field is size)`
`ls -l | sort -k 5n`{{execute}} # Sorts ls -l output numerically by the 5th field (size)

Here are some highly used options for `sort`:

1.  **`-r` (Reverse order)**
    Sorts the input in reverse order (e.g., Z to A alphabetically, or largest to smallest numerically).

    `sort -r unsorted_list.txt`{{execute}} # Sorts alphabetically in reverse

2.  **`-n` (Numeric sort)**
    Sorts lines based on the numerical value of the leading number in each line, rather than character by character. This is essential when sorting numbers.

    `echo -e "10\n2\n100\n20" > numbers.txt`{{execute}}
    `sort numbers.txt`{{execute}} # Default (alphabetical) sort
    `sort -n numbers.txt`{{execute}} # Numeric sort

3.  **`-u` (Unique)**
    Outputs only unique lines from the sorted input. Duplicate lines are removed. Often used in conjunction with sorting.

    `echo -e "apple\nbanana\napple\norange\nbanana" > list_with_dupes.txt`{{execute}}
    `sort -u list_with_dupes.txt`{{execute}} # Sorts and removes duplicates

4.  **`-k KEYDEF` (Sort by key)**
    Sorts based on a specific key, which is a field or a portion of a field. `KEYDEF` specifies the starting and optional ending position of the key, usually in the format `FIELD_START[,FIELD_END]`. Field numbers start from 1. This option is almost always used with `-t` for delimited data.

    `# Assume comma-separated data: Name,Score`
    `echo -e "Alice,85\nBob,92\nCharlie,78\nAlice,90" > scores.csv`{{execute}}
    `# Sort numerically by the 2nd field (Score)`
    `sort -t ',' -k 2n scores.csv`{{execute}}

    `# Sort alphabetically by the 1st field (Name)`
    `sort -t ',' -k 1 scores.csv`{{execute}}

5.  **`-t DELIMITER` (Field delimiter)**
    Specifies the character that separates fields when using the `-k` option.

    `# Already demonstrated with the -k examples above using comma`
    `sort -t ',' -k 2n scores.csv`{{execute}}

6.  **`-f` (Fold lower to upper case)**
    Performs a case-insensitive sort. Lowercase letters are treated as their uppercase equivalents for comparison.

    `echo -e "Apple\nbanana\nOrange" > mixed_case.txt`{{execute}}
    `sort mixed_case.txt`{{execute}} # Default (case-sensitive)
    `sort -f mixed_case.txt`{{execute}} # Case-insensitive

The `sort` command is fundamental for organizing data in text files. Combining options like `-n`, `-r`, `-u`, `-k`, and `-t` allows for sophisticated sorting based on various criteria and data structures.
