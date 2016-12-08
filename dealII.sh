singlecore(){
#Checkpoint
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/dealII configs/example/se.py \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn" \
    --options="8"\
    --mem-size="1GB" \
    --take-simpoint-checkpoints="output/test2/dealII/simpoint.out,output/test2/dealII/simpoint.weight,100000000,1000000"

#Single core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/dealII/run1 configs/example/singleCore.py \
    --cpu-type=detailed --caches --l2cache \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn" \
    --options="8"\
    --mem-size="1GB" --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/singleCore-1gb/dealII/"
}

singlecore4(){
#Single core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/4jobs/dealII configs/example/single_simple.py \
    --cpu-type=detailed --caches --l2cache --smt\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn" \
    --options="8;8;8;8"\
    --mem-size="4GB"
}

multicore(){
#Checkpoint multi core
build/X86/gem5.fast -r --outdir=output/multiCore/dealIIprofile configs/example/se.py \
    --take-simpoint-checkpoints="output/test2/dealII/simpoint.out,output/test2/dealII/simpoint.weight,100000000,1000000"\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn" \
    --options="8;8;8;8"\
    --num-cpus=4 --mem-size="4GB"

#Multi core run
build/X86/gem5.fast -r --outdir=output/multiCore/cacheUpdate/dealII configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/dealIIprofile/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn" \
    --options="8;8;8;8"\
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB"
}

#Initial Profile
#build/X86/gem5.fast -r --outdir=output/test2/dealII configs/example/se.py \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn" \
#    --options="8"\
#    --simpoint-profile --simpoint-interval 100000000 --fastmem
#
#Simpoint
#./simpoint -loadFVFile output/test2/dealII/simpoint.bb.gz -maxK 1 \
#    -saveSimpoints output/test2/dealII/simpoint.out \
#    -saveSimpointWeights output/test2/dealII/simpoint.weight -inputVectorsGzipped

#singlecore &
#multicore &
singlecore4 &
