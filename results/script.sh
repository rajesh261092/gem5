bench=(calculix dealII libquantum perlbench xalancbmk cactusADM lbm povray leslie3d)
for tech in {22,28,40,45,65,90}
do
    for i in "${bench[@]}"
    do
        echo "multiCore/$i"
        path="multiCore/$i/"
        ./parse.pl --stats $path/stats.txt --config $path/config.ini --core core_multi.xml --template project_mcpat.xml \
            --out $path/mcpat_$tech\.xml --tech $tech
        ../mcpat/mcpat -infile $path/mcpat_$tech\.xml -print_level 5 -opt_for_clock 1 > $path/mcpat_$tech\.data &
    done
done
