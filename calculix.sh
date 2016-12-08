singlecore(){
#Checkpoint
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/calculix configs/example/se.py \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn" \
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic"\
    --mem-size="1GB" \
    --take-simpoint-checkpoints="output/test2/calculix/simpoint.out,output/test2/calculix/simpoint.weight,10000000,1000000"

#Single core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/calculix/run1 configs/example/singleCore.py \
    --cpu-type=detailed --caches --l2cache \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn" \
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic"\
    --mem-size="1GB" --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/singleCore-1gb/calculix/"
}

singlecore4(){
#Multi core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/4jobs/calculix configs/example/single_simple.py\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn" \
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic"\
    --smt --cpu-type=detailed --caches --l2cache --mem-size="4GB"
}

multicore(){
#Checkpoint multi core
build/X86/gem5.fast -r --outdir=output/multiCore/calculixprofile configs/example/se.py \
    --take-simpoint-checkpoints="output/test2/calculix/simpoint.out,output/test2/calculix/simpoint.weight,10000000,1000000"\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn" \
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic"\
    --num-cpus=4 --mem-size="4GB"

#Multi core run
build/X86/gem5.fast -r --outdir=output/multiCore/cacheUpdate/calculix configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/calculixprofile/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn" \
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic"\
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB"
}

#Initial Profile
#build/X86/gem5.fast -r --outdir=output/test2/calculix configs/example/se.py \
#    --cmd=../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn \
#    --options=../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic\
#    --simpoint-profile --simpoint-interval 10000000 --fastmem
##
#Simpoint
#./simpoint -loadFVFile output/test2/calculix/simpoint.bb.gz -maxK 1 \
#    -saveSimpoints output/test2/calculix/simpoint.out \
#    -saveSimpointWeights output/test2/calculix/simpoint.weight -inputVectorsGzipped

#singlecore &
#multicore &
singlecore4 &
