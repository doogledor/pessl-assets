#!/bin/bash

rm transcripts/manifest.txt
echo $(find -L transcripts -type f -name "*.json" | sort) >> transcripts/manifest.txt


