#!/bin/bash

./batch.merge.sh

./batch.split_default.sh &
./batch.split_dot.sh &
./batch.split_nmc.sh &
wait
