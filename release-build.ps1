# Create a temporary directory to hold the files
New-Item -ItemType Directory -Path "release_files"

# Copy the desired files and directories to the temporary directory
Copy-Item -Recurse "ansible", "artifacts", "builds", "config", "scripts", "terraform", "build.*" -Destination "release_files/"

# Create a ZIP file containing the selected files and directories
Compress-Archive -Path "release_files/*" -DestinationPath "release.zip"

# Remove the temporary directory
cmd /c "rmdir /s /q release_files"

