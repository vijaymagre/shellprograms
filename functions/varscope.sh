#!/bin/bash
function scope() {
    B=20
    local C=30

    echo "A: $A"
    echo "B (inside function): $B" 
    echo "C (inside function): $C"
    A=$[A+1]
}

#main block
A=10
scope
echo "Main block A : $A"
echo "B (main block) : $B"
echo "C (main block) : $C"
