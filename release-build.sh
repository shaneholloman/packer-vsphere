#!/usr/bin/env sh

# Create a temporary directory to hold the files
mkdir release_files

# Copy the desired files and directories to the temporary directory
cp -r ansible artifacts builds config scripts terraform build.* release_files/

# Create a ZIP file containing the selected files and directories
zip -r release.zip release_files/

# Remove the temporary directory
rm -rf release_files/
