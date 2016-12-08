singlecore(){
#Checkpoint
#Single core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/perlbench/run1 configs/example/single_simple.py \
    --cpu-type=detailed --caches --l2cache \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn" \
    --options="-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl" \
    --output="output/singleCore-1gb/perlbench/perlbench.out" \
    --mem-size="1GB"
    #--restore-simpoint-checkpoint -r 1 \
    #--checkpoint-dir="output/singleCore-1gb/perlbench/"
}

singlecore4(){
#Checkpoint
#Single core run
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/4jobs/perlbench/ configs/example/single_simple.py \
    --cpu-type=detailed --caches --l2cache --smt\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn" \
    --options="-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;" \
    --output="output/singleCore-1gb/perlbench/perlbench.out1;output/singleCore-1gb/perlbench/perlbench.out2;output/singleCore-1gb/perlbench/perlbench.out3;output/singleCore-1gb/perlbench/perlbench.out4" \
    --mem-size="4GB"
    #--restore-simpoint-checkpoint -r 1 \
    #--checkpoint-dir="output/singleCore-1gb/perlbench/"
}
multicore(){

#Multi core run
build/X86/gem5.fast -r --outdir=output/multiCore/cacheUpdate/perlbench configs/example/multiCore.py \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn" \
    --options="-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;" \
    --output="output/singleCore-1gb/perlbench/perlbench.out1;output/singleCore-1gb/perlbench/perlbench.out2;output/singleCore-1gb/perlbench/perlbench.out3;output/singleCore-1gb/perlbench/perlbench.out4" \
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB"
}


#singlecore &
#multicore &
singlecore4 &
