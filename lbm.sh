#build/X86/gem5.fast -r --outdir=output/multiCore/lbmprofile3 configs/example/se.py \
#    --take-simpoint-checkpoints="output/test2/lbm/simpoint.out,output/test2/lbm/simpoint.weight,100000000,1000000"\
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn" \
#    --options="20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of" \
#    --output="output/singleCore-1gb/lbm/lbm.out1;output/singleCore-1gb/lbm/lbm.out2;output/singleCore-1gb/lbm/lbm.out3;output/singleCore-1gb/lbm/lbm.out4" \
#    --num-cpus=4 --mem-size="4GB"
#
#build/X86/gem5.fast -r --outdir=output/multiCore/cacheUpdate/lbm configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
#    --checkpoint-dir="output/multiCore/lbmprofile3/" \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn" \
#    --options="20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of" \
#    --output="output/singleCore-1gb/lbm/lbm.out1;output/singleCore-1gb/lbm/lbm.out2;output/singleCore-1gb/lbm/lbm.out3;output/singleCore-1gb/lbm/lbm.out4" \
#    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &
