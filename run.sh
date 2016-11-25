#./parse.pl --stats a4/dse/test_1/stats.txt --config a4/dse/test_1/config.ini --core core.xml --template project_mcpat.xml
#leslie, cactus, lbm, astart, povray

#Single Core
#build/X86/gem5.fast -r --outdir=output/test2/leslie3d configs/example/se.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn" --input="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in" --output="output/test2/leslie3d/leslie3d.stdout" --simpoint-profile --simpoint-interval 100000000 --fastmem &
#
#build/X86/gem5.fast -r --outdir=output/test2/cactusADM configs/example/se.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par" --output="output/test2/cactusADM/benchADM.out" --simpoint-profile --simpoint-interval 100000000 --fastmem &
#
#build/X86/gem5.fast -r --outdir=output/test2/lbm configs/example/se.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn" --options="20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of" --output="output/test2/lbm/lbm.out" --simpoint-profile --simpoint-interval 100000000 --fastmem &
#
#build/X86/gem5.fast -r --outdir=output/test2/povray configs/example/se.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini" --output="output/test2/povray/SPEC-benchmark-test.stdout" --simpoint-profile --simpoint-interval 100000000 --fastmem  &
#
#build/X86/gem5.fast -r --outdir=output/test2/astar configs/example/se.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/473.astar/exe/astar_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/473.astar/data/test/input/lake.cfg" --output="output/test2/astar/lake.out" --simpoint-profile --simpoint-interval 100000000 --fastmem &
#
#SimPoints
./simpoint -loadFVFile output/test2/leslie3d/simpoint.bb.gz -maxK 1 -saveSimpoints output/test2/leslie3d/simpoint.out -saveSimpointWeights output/test2/leslie3d/simpoint.weight -inputVectorsGzipped
./simpoint -loadFVFile output/test2/cactusADM/simpoint.bb.gz -maxK 1 -saveSimpoints output/test2/cactusADM/simpoint.out -saveSimpointWeights output/test2/cactusADM/simpoint.weight -inputVectorsGzipped
./simpoint -loadFVFile output/test2/povray/simpoint.bb.gz -maxK 1 -saveSimpoints output/test2/povray/simpoint.out -saveSimpointWeights output/test2/povray/simpoint.weight -inputVectorsGzipped
./simpoint -loadFVFile output/test2/astar/simpoint.bb.gz -maxK 1 -saveSimpoints output/test2/astar/simpoint.out -saveSimpointWeights output/test2/astar/simpoint.weight -inputVectorsGzipped
./simpoint -loadFVFile output/test2/lbm/simpoint.bb.gz -maxK 1 -saveSimpoints output/test2/lbm/simpoint.out -saveSimpointWeights output/test2/lbm/simpoint.weight -inputVectorsGzipped

#Profiling the simpoints
build/X86/gem5.fast -r --outdir=output/singleCore-1gb/leslie3d configs/example/singleCore.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn" --input="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in" --output="output/singleCore-1gb/leslie3d/leslie3d.stdout" --mem-size="1GB" --take-simpoint-checkpoints="output/singleCore-1gb/leslie3d/simpoint_k1.out,output/singleCore-1gb/leslie3d/simpoint_k1.weight,100000000,1000000" &

build/X86/gem5.fast -r --outdir=output/singleCore-1gb/cactusADM configs/example/singleCore.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par" --output="output/singleCore-1gb/cactusADM/benchADM.out" --mem-size="1GB" --take-simpoint-checkpoints="output/singleCore-1gb/leslie3d/simpoint_k1.out,output/singleCore-1gb/leslie3d/simpoint_k1.weight,100000000,1000000"&

build/X86/gem5.fast -r --outdir=output/singleCore-1gb/povray configs/example/singleCore.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini" --output="output/singleCore-1gb/povray/SPEC-benchmark-test.stdout" --mem-size="1GB" --take-simpoint-checkpoints="output/singleCore-1gb/leslie3d/simpoint_k1.out,output/singleCore-1gb/leslie3d/simpoint_k1.weight,100000000,1000000"&

build/X86/gem5.fast -r --outdir=output/singleCore-1gb/astar configs/example/singleCore.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/473.astar/exe/astar_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/473.astar/data/test/input/lake.cfg" --output="output/singleCore-1gb/astar/lake.out" --mem-size="1GB" --take-simpoint-checkpoints="output/singleCore-1gb/leslie3d/simpoint_k1.out,output/singleCore-1gb/leslie3d/simpoint_k1.weight,100000000,1000000"&

build/X86/gem5.fast -r --outdir=output/singleCore-1gb/lbm configs/example/singleCore.py --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn" --options="20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of" --output="output/singleCore-1gb/lbm/lbm.out" --mem-size="1GB" --take-simpoint-checkpoints="output/singleCore-1gb/leslie3d/simpoint_k1.out,output/singleCore-1gb/leslie3d/simpoint_k1.weight,100000000,1000000"&


#Actual Run
#build/X86/gem5.fast -r --outdir=output/singleCore-1gb/leslie3d/run configs/example/singleCore.py --cpu-type=detailed --caches --l2cache --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/exe/leslie3d_base.amd64-m64-gcc42-nn" --input="../../../big/rrip/cpu2006/benchspec/CPU2006/437.leslie3d/data/test/input/leslie3d.in" --output="output/singleCore-1gb/leslie3d/leslie3d.stdout" --mem-size="1GB" --restore-simpoint-checkpoint -r 1 --checkpoint-dir="output/singleCore-1gb/leslie3d/"&
#
#build/X86/gem5.fast -r --outdir=output/singleCore-1gb/cactusADM configs/example/singleCore.py --cpu-type=detailed --caches --l2cache --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/exe/cactusADM_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/436.cactusADM/data/test/input/benchADM.par" --output="output/singleCore-1gb/cactusADM/benchADM.out" --mem-size="1GB" --restore-simpoint-checkpoint -r 1 --checkpoint-dir="output/singleCore-1gb/leslie3d/" &
#
#build/X86/gem5.fast -r --outdir=output/singleCore-1gb/povray configs/example/singleCore.py --cpu-type=detailed --caches --l2cache --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/exe/povray_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/453.povray/data/test/input/SPEC-benchmark-test.ini" --output="output/singleCore-1gb/povray/SPEC-benchmark-test.stdout" --mem-size="1GB" --restore-simpoint-checkpoint -r 1 --checkpoint-dir="output/singleCore-1gb/leslie3d/" &
#
#build/X86/gem5.fast -r --outdir=output/singleCore-1gb/astar configs/example/singleCore.py --cpu-type=detailed --caches --l2cache --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/473.astar/exe/astar_base.amd64-m64-gcc42-nn" --options="../../../big/rrip/cpu2006/benchspec/CPU2006/473.astar/data/test/input/lake.cfg" --output="output/singleCore-1gb/astar/lake.out" --mem-size="1GB" --restore-simpoint-checkpoint -r 1 --checkpoint-dir="output/singleCore-1gb/leslie3d/" &
#
#build/X86/gem5.fast -r --outdir=output/singleCore-1gb/lbm configs/example/singleCore.py --cpu-type=detailed --caches --l2cache --cmd="../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/exe/lbm_base.amd64-m64-gcc42-nn" --options="20 reference.dat 0 1 ../../../big/rrip/cpu2006/benchspec/CPU2006/470.lbm/data/test/input/100_100_130_cf_a.of" --output="output/singleCore-1gb/lbm/lbm.out" --mem-size="1GB" --restore-simpoint-checkpoint -r 1 --checkpoint-dir="output/singleCore-1gb/leslie3d/" &
