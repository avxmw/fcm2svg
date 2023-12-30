#!/bin/bash

grep loadFromDataURI "${1}" | \
python3 -c "import sys; from urllib.parse import unquote; print(unquote(sys.stdin.read()));" | \
grep -v loadFromDataURI > "${1}.svg"
