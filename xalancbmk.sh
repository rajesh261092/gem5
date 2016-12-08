singlecore(){
#Checkpoint
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/xalancbmk configs/example/se.py \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn" \
    --options="-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl" \
    --output="output/singleCore-1gb/xalancbmk/xalancbmk.out" \
    --mem-size="1GB" \
    --take-simpoint-checkpoints="output/test2/xalancbmk/simpoint.out,output/test2/xalancbmk/simpoint.weight,100000000,1000000"

#Single core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/xalancbmk/run1 configs/example/singleCore.py \
    --cpu-type=detailed --caches --l2cache \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn" \
    --options="-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl" \
    --output="output/singleCore-1gb/xalancbmk/test.out"\
    --mem-size="1GB" --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/singleCore-1gb/xalancbmk/"
}

singlecore4(){
#Single core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/4jobs/xalancbmk configs/example/single_simple.py \
    --cpu-type=detailed --caches --l2cache --smt\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn" \
    --options="-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl" \
    --output="output/singleCore-1gb/xalancbmk/test.out1;output/singleCore-1gb/xalancbmk/test.out2;output/singleCore-1gb/xalancbmk/test.out3;output/singleCore-1gb/xalancbmk/test.out4"\
    --mem-size="4GB"
}

multicore(){
#Checkpoint multi core
build/X86/gem5.fast -r --outdir=output/multiCore/xalancbmkprofile configs/example/se.py \
    --take-simpoint-checkpoints="output/test2/xalancbmk/simpoint.out,output/test2/xalancbmk/simpoint.weight,100000000,1000000"\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn" \
    --options="-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl" \
    --output="output/singleCore-1gb/xalancbmk/test.out1;output/singleCore-1gb/xalancbmk/test.out2;output/singleCore-1gb/xalancbmk/test.out3;output/singleCore-1gb/xalancbmk/test.out4"\
    --num-cpus=4 --mem-size="4GB"

#Multi core run
build/X86/gem5.fast -r --outdir=output/multiCore/cacheUpdate/xalancbmk configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/xalancbmkprofile/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn" \
    --options="-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl" \
    --output="output/singleCore-1gb/xalancbmk/test.out1;output/singleCore-1gb/xalancbmk/test.out2;output/singleCore-1gb/xalancbmk/test.out3;output/singleCore-1gb/xalancbmk/test.out4"\
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB"
}

#Initial Profile
#build/X86/gem5.fast -r --outdir=output/test2/xalancbmk configs/example/se.py \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn" \
#    --options="-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl" \
#    --output="output/singleCore-1gb/xalancbmk/xalancbmk.out" \
#    --simpoint-profile --simpoint-interval 100000000 --fastmem
##
#Simpoint
#./simpoint -loadFVFile output/test2/xalancbmk/simpoint.bb.gz -maxK 1 \
#    -saveSimpoints output/test2/xalancbmk/simpoint.out \
#    -saveSimpointWeights output/test2/xalancbmk/simpoint.weight -inputVectorsGzipped
#
#singlecore &
#multicore &
singlecore4 &
