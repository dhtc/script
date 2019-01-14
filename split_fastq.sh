#!/bin/bash
#by dhtc for split old 10x fq to new format
#####################
#    unfinished     #
#####################
if [ $# -ne 3 ]
then
	echo 'Parameter wrong!'
	echo -e "Usage:$0 /path/to/R1.fq.gz /path/to/R2.fq.gz /path/to/OutputDir"
else
	arg=$@
	mkdir -p arg[3]
	fq1=arg[1]
	fq2=arg[2]
	echo -e $fq1 $fq2 $arg[3]
	#zcat arg[1]|awk '{if (NR%4==1)print;if(NR%4==2)print substr($0,1,16);if(NR%4==3)print;if(NR%4==0)print substr($0,1,16)}'  >${arg%%/}/R2.fq
	#zcat arg[1]|awk '{if (NR%4==1)print;if(NR%4==2)print substr($0,17);if(NR%4==3)print;if(NR%4==0)print substr($0,17)}'  >${arg%%/}/R1.fq
	#zcat arg[2]|awk '{if(NR%4==1)print;split($0,i,":");print i[10];print "+";print"#A<-FF--"}' >${arg%%/}/I1.fq
fi