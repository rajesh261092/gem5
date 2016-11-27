bench=(calculix dealII libquantum perlbench xalancbmk)

#for i in "${bench[@]}"
#do
#    echo "singlecore/$i"
#    ./parse.pl --stats singleCore/$i/stats.txt --config singleCore/$i/config.ini --core core.xml --template project_mcpat.xml \
#        --out singleCore/$i/mcpat.xml 
#done
#
#for i in "${bench[@]}"
#do
#    echo "singlecore-1gb/$i"
#    ./parse.pl --stats singleCore-1gb/$i/stats.txt --config singleCore-1gb/$i/config.ini --core core.xml --template project_mcpat.xml \
#        --out singleCore-1gb/$i/mcpat.xml 
#done

simbench=(cactusADM)
#lbm leslie3d povray)

#for i in "${simbench[@]}"
#do
#    echo "simpoint/$i"
#    ./parse.pl --stats simpoint/singleCore-1gb/$i/run1/stats.txt --config simpoint/singleCore-1gb/$i/run1/config.ini --core core.xml --template project_mcpat.xml \
#        --out simpoint/singleCore-1gb/$i/run1/mcpat.xml 
#done

multibench=(cactusrun1 lbmrun1 povrayrun1)
for i in "${multibench[@]}"
do
    echo "simpoint-multi/$i"
    ./parse.pl --stats simpoint/$i/stats.txt --config simpoint/$i/config.ini --core core.xml --template project_mcpat.xml \
        --out simpoint/$i/mcpat.xml 
done
