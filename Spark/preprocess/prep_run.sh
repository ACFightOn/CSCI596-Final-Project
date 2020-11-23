# !/bin/bash
chmod +x ./preproc_test.sh   # make preproc_test.sh executable
./preproc_test.sh ../data/test.csv ../data/after.csv

chmod +x ./preproc_train.sh  # make preproc_train.sh executable
./preproc_train.sh ../data/train.scv ../data/train_after.csv