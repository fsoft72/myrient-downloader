#!/bin/bash
set -e

echo "Installing build dependencies..."
pip install --upgrade build twine

echo "Cleaning up old builds..."
rm -rf dist/ build/ *.egg-info

echo "Building package..."
python3 -m build

echo "Uploading to PyPI..."
python3 -m twine upload dist/*
