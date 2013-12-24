#! /bin/bash -x
################################################################################
#
# ------ FOR Linux64 & gnu C&fortran & openmpi -----
#
################################################################################
export FORT_FMT_RECL=400


ln -sv ../../../../bin/fio_ico2ll_mpi .
ln -sv ../../../../data/mnginfo/rl00-prc10.info .
ln -sv ../../../../data/zaxis .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.info .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00000 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00001 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00002 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00003 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00004 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00005 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00006 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00007 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00008 .
ln -sv ../../../../data/grid/llmap/gl05/rl00/llmap.rgn00009 .

# run
mpirun -np 10 ./fio_ico2ll_mpi history glevel=5 rlevel=0 mnginfo="./rl00-prc10.info" layerfile_dir="./zaxis" llmap_base="./llmap" -lon_swap -comm_smallchunk

################################################################################
