#!/bin/sh -ex

prefix=$1
if [ "$prefix" = "" ]; then
  prefix=`opam config var prefix`
fi

odir=$prefix/lib
rm -f $odir/pkgconfig/mirage-xen-ocaml.pc
rm -f $odir/mirage-xen-ocaml
rm -f $prefix/include/mirage-xen-ocaml