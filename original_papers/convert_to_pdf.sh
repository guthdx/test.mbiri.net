#!/bin/bash

for docx_file in *.docx; do
    echo "Converting: $docx_file"
    
    # Get full paths
    input_path="$(cd "$(dirname "$docx_file")" && pwd)/$(basename "$docx_file")"
    output_path="${input_path%.docx}.pdf"
    
    osascript <<EOF
    tell application "Microsoft Word"
        activate
        set theDoc to open file "$input_path"
        save as theDoc file name "$output_path" file format format PDF
        close theDoc
    end tell
EOF
    
    if [ $? -eq 0 ]; then
        echo "  ✓ Created: $(basename "$output_path")"
    else
        echo "  ✗ Failed to convert: $docx_file"
    fi
done

echo ""
echo "Conversion complete!"
