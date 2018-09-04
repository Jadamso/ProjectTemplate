#! /bin/bash
####################################################################
# Jordan Adamson 
####################################################################
shopt -s expand_aliases
source $HOME"/.bashrc"

Paper=
#-------------------------------------------------------------------
#########################
# Linux and R Information
#########################
CodeSub \
    -p $Paper \
    -m "1gb" \
    -w "00:00:10" \
    -c "1" \
    -n "1" \
    -s INFO

#-------------------------------------------------------------------
#########################
# Create Cleaned Data
#########################
## run sequentially

for code in 000 001 002 003 004
do

    if [[ $code == 000 ]]
    then
        WDEP=""
    else
        WDEP="-W $job"
    fi

    nextjob=`CodeSub \
        -p $Paper \
        -m "50gb" \
        -w "00:10:00" \
        -c "24" \
        -n "1" \
        -s $code \
        $WDEP`

    job=`echo "${nextjob[0]}" | awk 'NR==2'`

    echo -e "$nextjob"
done

#-------------------------------------------------------------------
#########################
# Analyze Cleaned Data
#########################
## run in parallel

for code in 100 101 102 200 201
do
    CodeSub \
        -p $Paper \
        -m "50gb" \
        -w "00:60:00" \
        -c "24" \
        -n "1" \
        -s $code \
        -W $job
done


## 301 302 not run

