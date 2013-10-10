#!/bin/sh

cd "$(dirname "$0")"

must() {
   status=$1
   shift
   "$@"
   if [ $? = $status ]
   then
      echo "Test OK!"
   else
      echo "Failed test!"
   fi
}

echo "Regression tests for issue #2"
must 0 ../codegrep "print" 2.0.lua
must 1 ../codegrep "print" 2.1.lua
must 0 ../codegrep "print" 2.2.lua
must 1 ../codegrep "print" 2.3.lua
must 1 ../codegrep "print" 2.4.lua
must 0 ../codegrep "print" 2.5.lua
must 0 ../codegrep "print" 2.6.lua
