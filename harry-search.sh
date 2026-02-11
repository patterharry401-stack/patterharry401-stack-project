#!/bin/bash
clear
echo "=============================="
echo "    HARRY-MAX OSINT SEARCH    "
echo "=============================="
read -p "Enter Target (Email or Username): " target

if [[ $target == *"@"* ]]; then
    echo "Searching Email: $target"
    echo "------------------------------"
    holehe $target | grep "\[+\]"
else
    echo "Searching Username: $target"
    echo "------------------------------"
    # Sherlock လမ်းကြောင်းကို အသေချာဆုံးဖြစ်အောင် ရှာခိုင်းမယ်
    python3 ~/patterharry401-stack-project/sherlock/sherlock.py $target --timeout 1 --print-found
fi

echo "------------------------------"
echo "Search Completed, Master Harry."
