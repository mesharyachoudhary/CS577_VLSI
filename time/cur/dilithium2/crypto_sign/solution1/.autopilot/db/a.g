#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/guest/Documents/experiments/dilithium_2/crypto_sign/solution1/.autopilot/db/a.g.bc ${1+"$@"}
