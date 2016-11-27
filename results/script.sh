bench=(calculix dealII libquantum perlbench xalancbmk)

for i in "${bench[@]}"
do
    echo "singlecore/$i"
    ./parse.pl --stats singleCore/$i/stats.txt --config singleCore/$i/config.ini --core core.xml --template project_mcpat.xml \
        --out singleCore/$i/mcpat.xml 
    ./mcpat/mcpat -infile singleCore/$i/mcpat.xml -print_level 5 -opt_for_clock 1 > singleCore/$i/mcpat.data 
done

for i in "${bench[@]}"
do
    echo "singlecore-1gb/$i"
    ./parse.pl --stats singleCore-1gb/$i/stats.txt --config singleCore-1gb/$i/config.ini --core core.xml --template project_mcpat.xml \
        --out singleCore-1gb/$i/mcpat.xml 
    ./mcpat/mcpat -infile singleCore-1gb/$i/mcpat.xml -print_level 5 -opt_for_clock 1 > singleCore-1gb/$i/mcpat.data 
done

simbench=(cactusADM lbm leslie3d povray)

for i in "${simbench[@]}"
do
    echo "simpoint/$i"
    ./parse.pl --stats simpoint/singleCore-1gb/$i/run1/stats.txt --config simpoint/singleCore-1gb/$i/run1/config.ini --core core.xml --template project_mcpat.xml \
        --out simpoint/singleCore-1gb/$i/run1/mcpat.xml 
    ./mcpat/mcpat -infile simpoint/singleCore-1gb/$i/run1/mcpat.xml -print_level 5 -opt_for_clock 1 > simpoint/singleCore-1gb/$i/run1/mcpat.data 
done

#multibench=(cactusrun1 lbmrun1 povrayrun1)
#for i in "${multibench[@]}"
#do
#    echo "simpoint-multi/$i"
#    ./parse.pl --stats simpoint/$i/stats.txt --config simpoint/$i/config.ini --core core.xml --template project_mcpat.xml \
#        --out simpoint/$i/mcpat.xml 
#done
