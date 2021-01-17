#!/bin/bash

function update_single {
    inputs="$(ls -r ${1}*png)"
    out="${1}doc.md"

    echo '' > $out

    for item in ${inputs[@]}; do
        basename="${item##*/}"
        echo "## ${basename} ##" >> $out
        echo "![${basename}](${basename})" >> $out
    done
}

projects=$(ls -d */)

for item in ${projects[@]}; do
    update_single $item
done
