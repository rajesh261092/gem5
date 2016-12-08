#Profiling the simpoints
#build/X86/gem5.fast -r --outdir=output/multiCore/cactusprofile2 configs/example/se.py \
#    --take-simpoint-checkpoint="output/test2/cactusADM/simpoint.out,output/test2/cactusADM/simpoint.weight,100000000,1000000"\
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn" \
#    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par" \
#    --output="output/singleCore-1gb/cactusADM/benchADM.out1;output/singleCore-1gb/cactusADM/benchADM.out2;output/singleCore-1gb/cactusADM/benchADM.out3;output/singleCore-1gb/cactusADM/benchADM.out4" \
#    --num-cpus=4 --mem-size="4GB"

#Actual runs
build/X86/gem5.fast -r --outdir=output/multiCore/cacheUpdate/cactusADM configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/cactusprofile2" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn" \
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par" \
    --output="output/singleCore-1gb/cactusADM/benchADM.out1;output/singleCore-1gb/cactusADM/benchADM.out2;output/singleCore-1gb/cactusADM/benchADM.out3;output/singleCore-1gb/cactusADM/benchADM.out4" \
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &
