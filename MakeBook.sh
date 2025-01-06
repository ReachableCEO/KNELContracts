#!/bin/bash
# Put together the KNEL services contract template

set -euo pipefail

# Pull in contract variables
source ./KNEL-Contract-Template-Variables.env

# Run mustache to expand variables
# ....

bash RenderTemplates.sh
bash RenderCSVToMarkdown.sh
bash build-book.sh