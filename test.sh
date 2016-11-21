#build/X86/gem5.opt -r --outdir=output/bitcount/analysis configs/example/se.py --cmd=benchmarks/bitcount/bin/bitcnts_O1 --options="112500" --output=output/bitcount/analysis/output_large.txt --simpoint-profile --fastmem
#build/X86/gem5.opt -r --outdir=output/susan/analysis configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/analysis/output_large.smoothing.pgm -s" --simpoint-profile --fastmem 
#build/X86/gem5.opt -r --outdir=output/qsort/analysis configs/example/se.py --cmd=benchmarks/qsort/bin/qsort_O2 --options="benchmarks/qsort/input_large.dat" --output=output/qsort/analysis/output_large.txt --simpoint-profile --fastmem

# run simpoint from SimPoint.3.2/analysiscode directory

#./simpoint -loadFVFile output/bitcount/analysis/simpoint.bb.gz -maxK 30 -saveSimpoints output/bitcount/analysis/simpoint.out -saveSimpointWeights output/bitcount/analysis/simpoint.weight -inputVectorsGzipped
#./simpoint -loadFVFile output/susan/analysis/simpoint.bb.gz -maxK 30 -saveSimpoints output/susan/analysis/simpoint.out -saveSimpointWeights output/susan/analysis/simpoint.weight -inputVectorsGzipped
#./simpoint -loadFVFile output/qsort/analysis/simpoint.bb.gz -maxK 30 -saveSimpoints output/qsort/analysis/simpoint.out -saveSimpointWeights output/qsort/analysis/simpoint.weight -inputVectorsGzipped

#./simpoint -loadFVFile output/qsort/analysis/simpoint.bb.gz -maxK 1 -saveSimpoints output/qsort/analysis/simpoint_k1.out -saveSimpointWeights output/qsort/analysis/simpoint_k1.weight -inputVectorsGzipped
#./simpoint -loadFVFile output/qsort/analysis/simpoint.bb.gz -maxK 2 -saveSimpoints output/qsort/analysis/simpoint_k2.out -saveSimpointWeights output/qsort/analysis/simpoint_k2.weight -inputVectorsGzipped
#./simpoint -loadFVFile output/qsort/analysis/simpoint.bb.gz -maxK 5 -saveSimpoints output/qsort/analysis/simpoint_k5.out -saveSimpointWeights output/qsort/analysis/simpoint_k5.weight -inputVectorsGzipped
#./simpoint -loadFVFile output/susan/analysis/simpoint.bb.gz -maxK 1 -saveSimpoints output/susan/analysis/simpoint_k1.out -saveSimpointWeights output/susan/analysis/simpoint_k1.weight -inputVectorsGzipped


#build/X86/gem5.opt -r --outdir=output/susan/run1 configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run1/output_large.smoothing.pgm -s" --take-simpoint-checkpoints="output/susan/analysis/simpoint_k1.out,output/susan/analysis/simpoint_k1.weight,10000000,0"
#build/X86/gem5.opt -r --outdir=output/susan/run2 configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run2/output_large.smoothing.pgm -s" --take-simpoint-checkpoints="output/susan/analysis/simpoint_k1.out,output/susan/analysis/simpoint_k1.weight,10000000,1000000"
#build/X86/gem5.opt -r --outdir=output/susan/run3 configs/example/se.py --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run3/output_large.smoothing.pgm -s" --take-simpoint-checkpoints="output/susan/analysis/simpoint.out,output/susan/analysis/simpoint.weight,10000000,1000000"
build/X86/gem5.opt --outdir=output/susan/run4 configs/example/se.py --restore-simpoint-checkpoint -r 1 --checkpoint-dir=output/susan/run3/ --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run3/output_large.smoothing.pgm -s" --caches --l2cache --cpu-type=detailed &
build/X86/gem5.opt --outdir=output/susan/run5 configs/example/se.py --restore-simpoint-checkpoint -r 2 --checkpoint-dir=output/susan/run3/ --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run3/output_large.smoothing.pgm -s" --caches --l2cache --cpu-type=detailed &
build/X86/gem5.opt --outdir=output/susan/run6 configs/example/se.py --restore-simpoint-checkpoint -r 3 --checkpoint-dir=output/susan/run3/ --cmd=benchmarks/susan/bin/susan_O2 --options="benchmarks/susan/input_large.pgm output/susan/run3/output_large.smoothing.pgm -s" --caches --l2cache --cpu-type=detailed &
