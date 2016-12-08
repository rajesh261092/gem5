#build/X86/gem5.fast -r --outdir=output/multiCore/leslieprofile2 configs/example/se.py \
#    --take-simpoint-checkpoints="output/test2/leslie3d/simpoint.out,output/test2/leslie3d/simpoint.weight,100000000,1000000"\
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn" \
#    --input="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in"\
#    --output="output/singleCore-1gb/leslie3d/leslie3d.stdout1;output/singleCore-1gb/leslie3d/leslie3d.stdout2;output/singleCore-1gb/leslie3d/leslie3d.stdout3;output/singleCore-1gb/leslie3d/leslie3d.stdout4" \
#    --num-cpus=4 --mem-size="4GB"

build/X86/gem5.fast -r --outdir=output/multiCore/cacheUpdate/leslie3d configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/leslieprofile2/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn" \
    --input="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in"\
    --output="output/singleCore-1gb/leslie3d/leslie3d.stdout1;output/singleCore-1gb/leslie3d/leslie3d.stdout2;output/singleCore-1gb/leslie3d/leslie3d.stdout3;output/singleCore-1gb/leslie3d/leslie3d.stdout4" \
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &
