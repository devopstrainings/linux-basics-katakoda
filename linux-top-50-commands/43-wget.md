In Linux and other Unix-like operating systems, the `wget` command downloads files from the web non-interactively. This means it can run in the background and doesn't require user interaction during the download process.

The basic usage is `wget URL`. By default, `wget` downloads the file specified by the URL and saves it in the current directory, using the last part of the URL as the local filename. It also typically displays a progress bar during the download.

**Basic usage: Downloading a file:**
Download a file (e.g., a license file from a project on GitHub).

`wget https://raw.githubusercontent.com/git/git/master/COPYING`{{execute}}
# wget will download the 'COPYING' file and save it in your current directory.
# Output shows download progress, speed, and completion.

Here are some highly used options for `wget` that control the download process and where files are saved:

1.  **`-O file` or `--output-document=file` (Output to file)**
    Saves the downloaded content to a local file specified by `file`, allowing you to rename the file during the download. Similar to `curl -o`.

    `# Download the COPYING file and save it as git_license.txt`
    `wget -O git_license.txt https://raw.githubusercontent.com/git/git/master/COPYING`{{execute}}
    `ls`{{execute}} # Verify 'git_license.txt' was created

2.  **`-c` or `--continue` (Continue interrupted download)**
    Resumes a partially downloaded file. If a file with the same name already exists and is the same size as the beginning of the remote file, `wget` will attempt to continue the download from where it left off. This is a key reliability feature.

    `# Start a download (e.g., a large file), stop it (Ctrl+C), then run the command again with -c`
    `# wget -c http://example.com/large_file.zip`{{execute}} # Use -c to resume

3.  **`-P directory` or `--directory-prefix=directory` (Save to directory)**
    Saves downloaded files to a specific local `directory` instead of the current one. Useful for organizing downloads.

    `mkdir downloads`{{execute}}
    `wget -P downloads https://raw.githubusercontent.com/git/git/master/README.md`{{execute}}
    `ls downloads`{{execute}} # Verify README.md was saved inside 'downloads'

4.  **`-nc` or `--no-clobber` (Don't overwrite)**
    If a file with the same name already exists in the destination directory, `wget` will not download the new file and will leave the existing one untouched. This prevents accidental overwriting.

    `# Assume COPYING file already exists`
    `wget -nc https://raw.githubusercontent.com/git/git/master/COPYING`{{execute}} # wget will report that the file already exists and skip the download

5.  **`-r` or `--recursive` (Recursive download)**
    Downloads all links from a starting URL, following directories recursively. This can be used to mirror websites or download entire directory structures from FTP/HTTP servers. **Use with extreme caution as it can download a vast amount of data.**

    `# Recursively download content from a specific directory URL (example)`
    `# wget -r http://example.com/docs/`{{execute}} # Downloads docs/ and everything beneath it

6.  **`-A acclist` or `--accept acclist` (Accept file extensions for recursive)**
    When used with `-r`, this option tells `wget` to download only files whose names end with the specified comma-separated list of extensions.

    `# Recursively download only .pdf and .txt files from a URL`
    `# wget -r -A pdf,txt http://example.com/publications/`{{execute}}

Other useful options include `-nv` (no verbose, suppresses most output), `-q` (quiet, suppresses all output), and `-b` (background, run the download in the background).

The `wget` command is a robust tool for downloading files and website content non-interactively, making it ideal for scripts and reliable downloads, particularly when network conditions might be unstable.
