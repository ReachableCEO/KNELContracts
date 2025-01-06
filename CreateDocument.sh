#!/bin/bash
# Put together the KNEL services contract template

set -euo pipefail

# Pull in contract variables
echo "Sourcing contract template variables..."
source ./KNEL-Contract-Template-Variables.env


echo "Rendering templates..."
bash RenderTemplates.sh

echo "Rendering CSV..."
bash RenderCSVToMarkdown.sh

echo "Putting it all together..."
bash RenderBook.sh