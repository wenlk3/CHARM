#!/bin/bash

# Script to download datasets for CHARM

echo "Downloading datasets for CHARM..."

# Create data directory
mkdir -p data
cd data

# Function to download and extract dataset
download_dataset() {
    dataset_name=$1
    dataset_url=$2
    
    echo "======================================"
    echo "Downloading $dataset_name..."
    echo "======================================"
    
    # Add actual download commands here
    # wget $dataset_url
    # unzip or tar xzf as needed
    
    echo "✓ $dataset_name download completed"
}

# Download Cityscapes (Note: Requires registration)
echo "Cityscapes requires manual download from https://www.cityscapes-dataset.com/"
echo "Please download and extract to data/cityscapes/"

# Download ADE20K
echo "ADE20K requires manual download from http://sceneparsing.csail.mit.edu/"
echo "Please download and extract to data/ade20k/"

# Download NYU Depth V2
echo "NYU Depth V2 requires manual download"
echo "Please download and extract to data/nyu_v2/"

cd ..

echo "======================================"
echo "Dataset download instructions completed!"
echo "Please manually download datasets that require registration."
echo "======================================"
