singlecore(){
#Checkpoint
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/libquantum configs/example/se.py \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn" \
    --options="33 5" \
    --mem-size="1GB" \
    --take-simpoint-checkpoints="output/test2/libquantum/simpoint.out,output/test2/libquantum/simpoint.weight,100000000,1000000"

#Single core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/libquantum/run1 configs/example/singleCore.py \
    --cpu-type=detailed --caches --l2cache \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn" \
    --options="33 5" \
    --mem-size="1GB" --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/singleCore-1gb/libquantum/"
}

singlecore4(){
#Checkpoint
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/4jobs/libquantum configs/example/single_simple.py \
    --cpu-type=detailed --caches --l2cache --smt\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn" \
    --options="33 5;33 5;33 5;33 5" \
    --mem-size="4GB"
}

multicore(){
#Checkpoint multi core
build/X86/gem5.fast -r --outdir=output/multiCore/libquantumprofile configs/example/se.py \
    --take-simpoint-checkpoints="output/test2/libquantum/simpoint.out,output/test2/libquantum/simpoint.weight,100000000,1000000"\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn" \
    --options="33 5;33 5;33 5;33 5" \
    --num-cpus=4 --mem-size="4GB"

#Multi core run
build/X86/gem5.fast -r --outdir=output/multiCore/cacheUpdate/libquantum configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/libquantumprofile/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn" \
    --options="33 5;33 5;33 5;33 5" \
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB"
}

#Initial Profile
#build/X86/gem5.fast -r --outdir=output/test2/libquantum configs/example/se.py \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn" \
#    --options="33 5" \
#    --simpoint-profile --simpoint-interval 100000000 --fastmem
##
#Simpoint
#./simpoint -loadFVFile output/test2/libquantum/simpoint.bb.gz -maxK 1 \
#    -saveSimpoints output/test2/libquantum/simpoint.out \
#    -saveSimpointWeights output/test2/libquantum/simpoint.weight -inputVectorsGzipped
#
#singlecore &
#multicore &
singlecore4 &
