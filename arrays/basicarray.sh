#!/bin/bash
N=(10 20 30 40 50 60 70)
echo ${N[@]:2:4}

TEAM=("Mike" "James" "Adam" "Kriste" "Brune")
NEWTEAM=${TEAM[@]/"James"/"Jack"}

echo ${NEWTEAM[@]}