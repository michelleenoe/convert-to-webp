# Convert to WebP (Shell Project)

## Project Description
This is a simple POSIX-compliant shell script that batch converts images 
(`.jpg`, `.jpeg`, `.png`, `.gif`) to `.webp` format.  
Converted files are placed in a `webp/` subfolder inside the given directory.  
Existing `.webp` files are skipped.

---

## Requirement Specification
- **Business requirement:** Provide a free and script-based way to batch-convert images for web use.  
- **User requirement:** Run one command on a folder and automatically get `.webp` versions of images.  
- **System requirement:**  
  - POSIX-compliant shell script (`/bin/sh`)  
  - Uses `cwebp` for conversion (`brew install webp` on macOS)  
  - Supports quality parameter (default 80)  
  - Creates a `webp/` subfolder for output  

---

## Usage
Make sure you have [`cwebp`](https://developers.google.com/speed/webp/docs/cwebp) installed.
- brew install webp  

```sh
# Clone the repo
git clone https://github.com/michelleenoe/convert-to-webp.git
cd convert-to-webp

# Make script executable
chmod +x convert-to-webp.sh

# Run script on a folder of images
./convert-to-webp.sh <directory> [quality]

# Example (default quality 80)
./convert-to-webp.sh ~/Desktop/webp-test

# Example (custom quality 90)
./convert-to-webp.sh ~/Desktop/webp-test 90
