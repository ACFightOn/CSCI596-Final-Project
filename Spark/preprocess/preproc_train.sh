#!/bin/bash
sed -i '1d' ../data/train.csv
# param for input and output file
infile=$1
outfile=$2
#注意！！最后的$infile > $outfile必须跟在}’这两个字符的后面
awk -F "," 'BEGIN{
    id=0;
}
{
    if($1 && $2 && $3 && $4 && ($5!=-1)){
        id=id+1;
        print $1","$2","$3","$4","$5
        if(id==10000){
            exit
        }
    }
}' $infile > $outfile