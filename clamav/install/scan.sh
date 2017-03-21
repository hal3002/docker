#!/bin/bash

for rule_file in /tmp/rules/*; do
    clamscan --debug --leave-temps --tempdir=/tmp/results -d $rule_file /tmp/samples
done
