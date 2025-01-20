#!/bin/bash

# This script uploads a Python package to a private repository using Twine.

# Check if the correct number of arguments is passed
if [ "$#" -ne 1 ]; then
  echo "Usage: ./upload_package.sh <version>"
  exit 1
fi

# The path to the distribution files
VERSION=$1

# Execute the Twine command to upload the package
python -m twine upload dist/*$VERSION*

# Check if the upload was successful
if [ $? -eq 0 ]; then
  echo "Package uploaded successfully!"
else
  echo "An error occurred during upload."
fi