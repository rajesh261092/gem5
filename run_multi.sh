#Profiling the simpoints
#build/X86/gem5.fast -r --outdir=output/multiCore/cactusprofile configs/example/se.py \
#    --take-simpoint-checkpoint="output/test2/cactusADM/simpoint.out,output/test2/cactusADM/simpoint.weight,100000000,1000000"\
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn" \
#    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par" \
#    --output="output/singleCore-1gb/cactusADM/benchADM.out1;output/singleCore-1gb/cactusADM/benchADM.out2;output/singleCore-1gb/cactusADM/benchADM.out3" \
#    --num-cpus=3 --mem-size="3GB" &
#
#build/X86/gem5.fast -r --outdir=output/multiCore/lbmprofile configs/example/se.py \
#    --take-simpoint-checkpoints="output/test2/lbm/simpoint.out,output/test2/lbm/simpoint.weight,100000000,1000000"\
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn" \
#    --options="20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of" \
#    --output="output/singleCore-1gb/lbm/lbm.out1;output/singleCore-1gb/lbm/lbm.out2;output/singleCore-1gb/lbm/lbm.out3" \
#    --num-cpus=3 --mem-size="3GB" &
#
#build/X86/gem5.fast -r --outdir=output/multiCore/leslieprofile configs/example/se.py \
#    --take-simpoint-checkpoints="output/test2/leslie3d/simpoint.out,output/test2/leslie3d/simpoint.weight,100000000,1000000"\
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn" \
#    --input="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in"\
#    --output="output/singleCore-1gb/leslie3d/leslie3d.stdout1;output/singleCore-1gb/leslie3d/leslie3d.stdout2;output/singleCore-1gb/leslie3d/leslie3d.stdout3" \
#    --num-cpus=3 --mem-size="3GB"&

build/X86/gem5.fast -r --outdir=output/multiCore/povrayprofile configs/example/se.py \
    --take-simpoint-checkpoints="output/test2/povray/simpoint.out,output/test2/povray/simpoint.weight,100000000,1000000"\
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn"\
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/"\
    --output="output/singleCore-1gb/povray/SPEC-benchmark-test.stdout1;output/singleCore-1gb/povray/SPEC-benchmark-test.stdout2;output/singleCore-1gb/povray/SPEC-benchmark-test.stdout3" \
    --num-cpus=3 --mem-size="3GB"&

#Actual runs
#build/X86/gem5.fast -r --outdir=output/multiCore/cactusrun1 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
#    --checkpoint-dir="output/multiCore/cactusprofile" \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn" \
#    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par" \
#    --output="output/singleCore-1gb/cactusADM/benchADM.out1;output/singleCore-1gb/cactusADM/benchADM.out2;output/singleCore-1gb/cactusADM/benchADM.out3" \
#    --cpu-type=TimingSimpleCPU --caches --l2cache --num-cpus=3 --mem-size="3GB" &
#
#build/X86/gem5.fast -r --outdir=output/multiCore/lbmrun1 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
#    --checkpoint-dir="output/multiCore/lbmprofile/" \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn" \
#    --options="20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of" \
#    --output="output/singleCore-1gb/lbm/lbm.out1;output/singleCore-1gb/lbm/lbm.out2;output/singleCore-1gb/lbm/lbm.out3" \
#    --cpu-type=TimingSimpleCPU --caches --l2cache --num-cpus=3 --mem-size="3GB" &
#
#build/X86/gem5.fast -r --outdir=output/multiCore/leslierun1 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
#    --checkpoint-dir="output/multiCore/leslieprofile/" \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn" \
#    --input="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in"
#    --output="output/singleCore-1gb/leslie3d/leslie3d.stdout1;output/singleCore-1gb/leslie3d/leslie3d.stdout2;output/singleCore-1gb/leslie3d/leslie3d.stdout3" \
#    --cpu-type=TimingSimpleCPU --caches --l2cache --num-cpus=3 --mem-size="3GB" &

#build/X86/gem5.fast -r --outdir=output/multiCore/povrayrun1 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
#    --checkpoint-dir="output/multiCore/povrayprofile/" \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn"\
#    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/"\
#    --output="output/singleCore-1gb/povray/SPEC-benchmark-test.stdout1;output/singleCore-1gb/povray/SPEC-benchmark-test.stdout2;output/singleCore-1gb/povray/SPEC-benchmark-test.stdout3" \
#    --cpu-type=TimingSimpleCPU --caches --l2cache --num-cpus=3 --mem-size="3GB" &
