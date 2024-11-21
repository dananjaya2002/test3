# Set security protocol to use TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12

# Set the download URL to the raw file URL
$DownloadURL = 'https://raw.githubusercontent.com/dananjaya2002/test3/main/file1.txt'

# Set error action preference to stop on errors
$ErrorActionPreference = "Stop"

try {
    # Attempt to download the file
    $response = Invoke-WebRequest -Uri $DownloadURL
    
    # If successful, print the content (or save it to a file)
    $response.Content | Out-File "file1.txt"
}
catch {
    # Handle any errors that occur during the download
    Write-Host "Error downloading file: $_"
}
