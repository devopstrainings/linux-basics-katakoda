In Linux and other Unix-like operating systems, the `curl` command is used to transfer data using various network protocols. Its most common use is fetching the content of a URL over HTTP or HTTPS.

The basic usage is `curl URL`. By default, it outputs the content retrieved from the URL to standard output.

**Basic usage: Fetching URL content:**
Fetch the HTML content of a webpage (like example.com).

`curl example.com`{{execute}}
# Or using a full URL:
`curl https://www.example.com`{{execute}}
#
# Output will be the source code of the webpage printed directly to your terminal.

Here are some highly used options for `curl` that control how data is transferred and handled:

1.  **`-o FILE` (Output to file)**
    Writes the fetched data to a local file specified by `FILE`, instead of printing it to standard output. Useful for downloading files and saving them with a specific name.

    `# Download a file and save it as local_page.html`
    `curl -o local_page.html https://www.example.com`{{execute}}
    `ls`{{execute}} # Verify the file was created

2.  **`-O` (Remote file name output)**
    Writes the fetched data to a local file named the same as the remote file (extracted from the URL). Useful for downloading files while preserving their original name.

    `# Download a file named 'image.jpg' from a server and save it as 'image.jpg'`
    `# curl -O https://example.com/images/image.jpg`{{execute}} # Example (won't download a real image here)
    `# ls` # Verify 'image.jpg' was created

3.  **`-L` (Follow redirects)**
    If the requested URL is a redirect (HTTP status codes 3xx), this option tells `curl` to follow the redirection to the new location. Essential when dealing with websites that use redirects (which is very common).

    `# Fetch a URL that redirects to another page (e.g., old URL to new URL)`
    `curl -L http://httpbin.org/redirect/1`{{execute}} # Fetches the final page after the redirect

4.  **`-I` or `--head` (Show headers only)**
    Fetches only the headers of the resource, not the body content. This is useful for checking the HTTP status code, content type, dates, server information, and other metadata without downloading the entire page or file.

    `curl -I https://www.example.com`{{execute}} # Displays HTTP headers

5.  **`-s` (Silent)**
    Suppresses `curl`'s progress meter and error messages during data transfer. Useful when using `curl` in scripts where you only want the output data.

    `# Fetch content silently (no progress bar)`
    `curl -s https://www.example.com`{{execute}} # Only the HTML content is printed

6.  **`-v` (Verbose)**
    Displays detailed information about the request and response, including the connection process, sent headers, received headers, etc. Essential for debugging network requests.

    `curl -v https://www.example.com`{{execute}} # Shows verbose debug output

7.  **Sending data (`-X`, `-d`, `-H`)**
    `curl` is widely used for sending data to servers, often for API testing using different HTTP methods like POST or PUT.
    * `-X METHOD`: Specifies the HTTP method to use (GET, POST, PUT, DELETE, etc.).
    * `-d DATA`: Sends the specified `DATA` in a POST request. By default, sets the `Content-Type` to `application/x-www-form-urlencoded`. Can be used multiple times.
    * `-H HEADER`: Adds a custom header to the request. Used for setting `Content-Type` (e.g., `application/json`), authorization tokens, etc.

    `# Send a simple POST request with data`
    `# curl -X POST -d "name=test&value=123" http://httpbin.org/post`{{execute}} # Posts form data

    `# Send a POST request with JSON data and set the Content-Type header`
    `# curl -X POST -H "Content-Type: application/json" -d '{"key": "value"}' http://httpbin.org/post`{{execute}} # Posts JSON data

The `curl` command is a Swiss Army knife for anything involving transferring data over networks from the command line, offering extensive control over protocols, requests, and data handling.
