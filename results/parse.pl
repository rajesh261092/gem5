#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my $stats   = "stats.txt";
my $config  = "config.ini"; 
my $template  = "mcpat-template.xml";
my $coretemplate  = "core.xml";
my $outfile = "output.xml";
GetOptions ("stats=s" => \$stats,
    "template=s" => \$template,
    "core=s" => \$coretemplate,
    "out=s" => \$outfile,
    "config=s"   => \$config)
    or die("Error in command line arguments\n");

open STAT, '<', $stats or die "Cannot open statistics file for read!";
open CONFIG, '<', $config or die "Cannot open configuration file for read!";
open XML, '<', $template or die "Cannot open template file for read!";
open OUT, '>', $outfile or die "Cannot open out file for write!";
open COREXML, '<', $coretemplate or die "Cannot open core template file for read!";
my %data;


my $head="";
my $cpucount=0;
foreach my $line (<CONFIG>)
{
    $head=~s/cpu$/cpu0/g;
    $head=~s/core$/core0/g;
    $head=~s/switch_cpus$/cpu0/g;
    $line=~s/cpu\./cpu0\./g;
    $line=~s/switch_cpus\./cpu0\./g;
    $line=~s/core\./core0\./g;
    if($line=~m/=/)
    {
        my($key, $value)=($line=~m/^(.*)=(.*)$/);
        if((defined $key)&&(defined $value))
        {
            $key='config.'.$head.'.'.$key;
            if($value=~/system/)
            {
                $value='config.'.$value;
            }
            if(exists $data{$key})
            {
                #print "Something is wrong with $key\n";
                $data{$key}=$value;
            }
            else
            {
                $data{$key}=$value;
                #print $key," ", $value,"\n";
            }
            #print $key,":",$value,"\n";
        }
        else
        {
            print "Not parsed correctly", $line;
        }
    }
    else
    {
        if($line=~/\[/)
        {
            ($head)=($line=~m/\[(.*)\]/);
            #print $head,"\n";
            if($head=~m/system\.cpu(\d+)$/)
            {
                $cpucount=$1;
            }
        }

    }
}

foreach my $line (<STAT>)
{
    $line=~s/cpu\./cpu0\./g;
    $line=~s/switch_cpus\./cpu0\./g;
    $line=~s/core\./core0\./g;
    if($line=~m/#/)
    {
        my($key, $value)=($line=~m/^([^\s]*)\s+([^\s]*)\s+/);
        #print $key,",",$value,"\n";
        if((defined $key)&&(defined $value))
        {
            $key='stats.'.$key;
            if(exists $data{$key})
            {
                #print "Something is wrong with $key\n";
                $data{$key}=$value;
            }
            else
            {
                $data{$key}=$value;
                #print $key,"\n";
            }
        }
    }
}

$data{"script.num_cores"}=$cpucount+1;
$data{"script.num_nocs"}=1;
$data{"script.technology"}=22;
if($cpucount==0)
{
    $data{"script.pipeline"}=0;
}
else
{
    $data{"script.pipeline"}=1;
}
$data{"script.device_type"}=0;
#<!--0: HP(High Performance Type); 1: LSTP(Low standby power) 2: LOP (Low Operating Power)  -
$data{"script.numcycles"}=0;
$data{"script.idlecycles"}=0;
$data{"script.mctype"}=0;
#<!-- 1: low power; 0 high performance -->
$data{"script.flashtype"}=0;
$data{"script.pcietype"}=0;
$data{"script.niutype"}=0;

foreach my $num (0..$cpucount)
{
    my $key="stats.system.cpu".$num.".numCycles";
    $data{"script.numcycles"}+=$data{$key};
    $key="stats.system.cpu"."$num".".idleCycles";
    $data{"script.idlecycles"}+=$data{$key};
}


foreach my $line (<XML>)
{
    if($line=~/REPLACE/)
    {
        my ($str)=($line=~/REPLACE{(.*)}/);
        foreach my $ptr (sort keys %data)
        {
            $str=~s/$ptr/$data{$ptr}/eg;
        }
        {
            if($str!~/,/)
            {
                $str=eval $str;
            }
            $line=~s/REPLACE{.*}/$str/e;
        }
        print OUT $line;
    }
    else
    {
        if($line=~/INSERT CORES HERE/)
        {
            foreach my $num(0..$cpucount)
            {
                my $corename="core".$num.".";
                my $cpuname="cpu".$num.".";
                my $multicpu="switch_cpus".$num.".";
                foreach my $coreline(<COREXML>)
                {
                    $coreline=~s/core\./$corename/g;
                    $coreline=~s/cpu\./$cpuname/g;
                    if($cpucount)
                    {
                        $coreline=~s/$cpuname/$multicpu/g;
                    }
                    if($coreline=~/REPLACE/)
                    {
                        my ($str)=($coreline=~/REPLACE{(.*)}/);
                        foreach my $ptr (sort keys %data)
                        {
                            $str=~s/$ptr/$data{$ptr}/eg;
                        }
                        {
                            if($str!~/,/)
                            {
                                $str=eval $str;
                            }
                            $coreline=~s/REPLACE{.*}/$str/e;
                        }
                        print OUT $coreline;
                    }
                    else
                    {
                        print OUT $coreline;
                    }

                }
                seek COREXML,0,0;
            }
        }
        else
        {
            print OUT $line;
        }
    }
}
