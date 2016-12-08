#build/X86/gem5.fast -r --outdir=output/multiCore/cactusrun3 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
#    --checkpoint-dir="output/multiCore/cactusprofile2" \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn" \
#    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par;../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par" \
#    --output="output/singleCore-1gb/cactusADM/benchADM.out1;output/singleCore-1gb/cactusADM/benchADM.out2;output/singleCore-1gb/cactusADM/benchADM.out3;output/singleCore-1gb/cactusADM/benchADM.out4" \
#    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

build/X86/gem5.fast -r --outdir=output/multiCore/calculixrun3 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/calculixprofile/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/exe/calculix_base.amd64-m64-gcc42-nn" \
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic;../../../big/rrip/cpu2006/benchspec/CPU2006/454.calculix/data/test/input/beampic"\
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

build/X86/gem5.fast -r --outdir=output/multiCore/dealIIrun3 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/dealIIprofile/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/447.dealII/exe/dealII_base.amd64-m64-gcc42-nn" \
    --options="8;8;8;8"\
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

build/X86/gem5.fast -r --outdir=output/multiCore/lbmrun3 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/lbmprofile2/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn" \
    --options="20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of;20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of" \
    --output="output/singleCore-1gb/lbm/lbm.out1;output/singleCore-1gb/lbm/lbm.out2;output/singleCore-1gb/lbm/lbm.out3;output/singleCore-1gb/lbm/lbm.out4" \
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

#build/X86/gem5.fast -r --outdir=output/multiCore/leslierun3 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
#    --checkpoint-dir="output/multiCore/leslieprofile2/" \
#    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn" \
#    --input="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in;../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in"\
#    --output="output/singleCore-1gb/leslie3d/leslie3d.stdout1;output/singleCore-1gb/leslie3d/leslie3d.stdout2;output/singleCore-1gb/leslie3d/leslie3d.stdout3;output/singleCore-1gb/leslie3d/leslie3d.stdout4" \
#    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

build/X86/gem5.fast -r --outdir=output/multiCore/libquantumrun3 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/libquantumprofile/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/462.libquantum/exe/libquantum_base.amd64-m64-gcc42-nn" \
    --options="33 5;33 5;33 5;33 5" \
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

build/X86/gem5.fast -r --outdir=output/multiCore/perlbenchrun3 configs/example/multiCore.py \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/exe/perlbench_base.amd64-m64-gcc42-nn" \
    --options="-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;-I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000 -I../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/lib ../../../big/rrip/cpu2006/benchspec/CPU2006/400.perlbench/run/run_base_test_amd64-m64-gcc42-nn.0000/attrs.pl;" \
    --output="output/singleCore-1gb/perlbench/perlbench.out1;output/singleCore-1gb/perlbench/perlbench.out2;output/singleCore-1gb/perlbench/perlbench.out3;output/singleCore-1gb/perlbench/perlbench.out4" \
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

build/X86/gem5.fast -r --outdir=output/multiCore/povrayrun3 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/povrayprofile2/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn"\
    --options="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/;../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini -I../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.pov +L../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/all/input/"\
    --output="output/singleCore-1gb/povray/SPEC-benchmark-test.stdout1;output/singleCore-1gb/povray/SPEC-benchmark-test.stdout2;output/singleCore-1gb/povray/SPEC-benchmark-test.stdout3;output/singleCore-1gb/povray/SPEC-benchmark-test.stdout4" \
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

build/X86/gem5.fast -r --outdir=output/multiCore/xalancbmkrun3 configs/example/multiCore.py --restore-simpoint-checkpoint -r 1 \
    --checkpoint-dir="output/multiCore/xalancbmkprofile/" \
    --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn;../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/exe/Xalan_base.amd64-m64-gcc42-nn" \
    --options="-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl;-v ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/test.xml ../../../big/rrip/cpu2006/benchspec/CPU2006/483.xalancbmk/data/test/input/xalanc.xsl" \
    --output="output/singleCore-1gb/xalancbmk/test.out1;output/singleCore-1gb/xalancbmk/test.out2;output/singleCore-1gb/xalancbmk/test.out3;output/singleCore-1gb/xalancbmk/test.out4"\
    --cpu-type=minor --caches --l2cache --num-cpus=4 --mem-size="4GB" &

