#!/bin/bash

cat << EOF
# MFEK Source Lines of Code (SLOC) Statistics
EOF

source slocstat.sh | sed -e 's/^#/##/;s@MFEK/MFEK@MFEK/@g'

cat << 'EOF'
This file is built automatically by running [`README.md.sh`](README.md.sh) via `make`.

Last run:
EOF

TZ=UTC date
