#!/bin/sh
# $FreeBSD: src/tools/regression/fstest/tests/link/17.t,v 1.1 2007/01/17 01:42:09 pjd Exp $

desc="Test repeated linking in different directories"

dir=`dirname $0`
. ${dir}/../misc.sh

echo "1..6"

n0=`namegen`
n1=`namegen`
n2=`namegen`

expect 0 create ${n0} 0644
expect 0 symlink ${n0} ${n1}
expect 0 link ${n1} ${n2}
expect 0 unlink ${n2}
expect 0 unlink ${n1}
expect 0 unlink ${n0}
