#!/bin/bash

## Generate credits from go.mod

# Vendor packages
LOCKFILE=../go.mod
egrep $'^\t[^=>]*$' $LOCKFILE  | sed -r 's/\t([^ ]*) v.*/\1/g' > tmp1
egrep $'^\t.*=>.*v.*$' $LOCKFILE  | sed -r 's/^.*=> ([^ ]*)( v.*)?/\1/g' >> tmp1
cat tmp1 | egrep -v 'therecipe/qt/internal|therecipe/env_.*_512|protontech' | sort | uniq > tmp
# Add non vendor credits
echo -e "\nFont Awesome 4.7.0\n\nQt 5.13 by Qt group\n" >> tmp
# join lines
sed -i -e ':a' -e 'N' -e '$!ba' -e 's|\n|;|g' tmp

echo '// Copyright (c) 2020 Proton Technologies AG
//
// This file is part of ProtonMail Bridge.
//
// ProtonMail Bridge is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// ProtonMail Bridge is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with ProtonMail Bridge.  If not, see <https://www.gnu.org/licenses/>.
' > ../internal/bridge/credits.go
echo -e '// Code generated by '`echo $0`' at '`date`'. DO NOT EDIT.\n\npackage bridge\n\nconst Credits = "'$(cat tmp)'"' >> ../internal/bridge/credits.go
rm tmp1 tmp
