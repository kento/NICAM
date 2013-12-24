#! /bin/bash -x
################################################################################
#
# ------ FOR Linux64 & gnu C&fortran & openmpi -----
#
################################################################################
export FORT_FMT_RECL=400


ln -sv ../../../../bin/nhm_driver .
ln -sv ../../../../data/mnginfo/rl00-prc10.info .
ln -sv ../../../../data/grid/vgrid/vgrid40_24000-600m.dat .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000000 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000001 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000002 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000003 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000004 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000005 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000006 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000007 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000008 .
ln -sv ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe000009 .

# run
mpirun -np 10 ./nhm_driver || exit

################################################################################
