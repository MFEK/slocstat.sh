#!/bin/bash
cd ..

TOKEI=$(tokei MFEK* *.rlib -t Rust -C | head -n -1)
printf '# Total\n```\n%s\n```\n' "$TOKEI" | grep -v '^ Total'

for f in $(for f in MFEK*; do echo "$f"; done | tac) *.rlib; do
    TOKEI=`tokei "$f/src" -t Rust -C | head -n -1`
    printf '# [%s](https://github.com/MFEK/%s)\n```\n%s\n```\n' "$f" "$f" "$TOKEI"
done | grep -v Total

