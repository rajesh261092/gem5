#./build/X86/gem5.opt --outdir=output/susan/ ./configs/example/fs.py --simpoint-profile --command-line "./susan/bin/susan_O0 ./susan/input_large.pgm out.pgm -s"



# generate BBV from gem5
# simpoint profiling uses fastmem option

build/X86/gem5.opt -r --outdir=output/bitcount/run1 configs/example/se.py --cmd=benchmarks/bitcount/bin/bitcnts_O1 --options="112500" --output=output/bitcount/run1/output_large.txt --simpoint-profile --fastmem &
build/X86/gem5.opt -r --outdir=output/susan/run1 configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run1/output_large.smoothing.pgm -s" --simpoint-profile --fastmem &
build/X86/gem5.opt -r --outdir=output/qsort/run1 configs/example/se.py --cmd=benchmarks/qsort/bin/qsort_O2 --options="benchmarks/qsort/input_large.dat" --output=output/qsort/run1/output_large.txt --simpoint-profile --fastmem &


# run simpoint from SimPoint.3.2/analysiscode directory

./simpoint -loadFVFile ../../gem5/output/bitcount/run1/simpoint.bb.gz -maxK 30 -saveSimpoints ../../gem5/output/bitcount/run1/simpoint.out -saveSimpointWeights ../../gem5/output/bitcount/run1/simpoint.weight -inputVectorsGzipped
./simpoint -loadFVFile ../../gem5/output/susan/run1/simpoint.bb.gz -maxK 30 -saveSimpoints ../../gem5/output/susan/run1/simpoint.out -saveSimpointWeights ../../gem5/output/susan/run1/simpoint.weight -inputVectorsGzipped
./simpoint -loadFVFile ../../gem5/output/qsort/run1/simpoint.bb.gz -maxK 30 -saveSimpoints ../../gem5/output/qsort/run1/simpoint.out -saveSimpointWeights ../../gem5/output/qsort/run1/simpoint.weight -inputVectorsGzipped


./simpoint -loadFVFile ../../gem5/output/qsort/run1/simpoint.bb.gz -maxK 1 -saveSimpoints ../../gem5/output/qsort/run1/simpoint_k1.out -saveSimpointWeights ../../gem5/output/qsort/run1/simpoint_k1.weight -inputVectorsGzipped
./simpoint -loadFVFile ../../gem5/output/qsort/run1/simpoint.bb.gz -maxK 2 -saveSimpoints ../../gem5/output/qsort/run1/simpoint_k2.out -saveSimpointWeights ../../gem5/output/qsort/run1/simpoint_k2.weight -inputVectorsGzipped
./simpoint -loadFVFile ../../gem5/output/qsort/run1/simpoint.bb.gz -maxK 5 -saveSimpoints ../../gem5/output/qsort/run1/simpoint_k5.out -saveSimpointWeights ../../gem5/output/qsort/run1/simpoint_k5.weight -inputVectorsGzipped


./simpoint -loadFVFile ../../gem5/output/susan/run1/simpoint.bb.gz -maxK 1 -saveSimpoints ../../gem5/output/susan/run1/simpoint_k1.out -saveSimpointWeights ../../gem5/output/susan/run1/simpoint_k1.weight -inputVectorsGzipped


build/X86/gem5.opt -r --outdir=output/susan/run2 configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run2/output_large.smoothing.pgm -s" --take-simpoint-checkpoints="output/susan/run1/simpoint_k1.out,output/susan/run1/simpoint_k1.weight,10000000,0" &
build/X86/gem5.opt -r --outdir=output/susan/run3 configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run3/output_large.smoothing.pgm -s" --take-simpoint-checkpoints="output/susan/run1/simpoint_k1.out,output/susan/run1/simpoint_k1.weight,10000000,1000000" &
build/X86/gem5.opt -r --outdir=output/susan/run4 configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run4/output_large.smoothing.pgm -s" --take-simpoint-checkpoints="output/susan/run1/simpoint.out,output/susan/run1/simpoint.weight,10000000,1000000" &


build/X86/gem5.opt -r --outdir=output/susan/run5 configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run5/output_large.smoothing.pgm -s" --restore-simpoint-checkpoint -r 1 --checkpoint-dir="output/susan/run2" -s 1000000 --caches &
