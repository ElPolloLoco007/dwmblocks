#!/bin/sh

amixer get Master | awk -F'[][]' 'END{ print "🔉"$2 }'

