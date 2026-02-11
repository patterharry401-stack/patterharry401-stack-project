#!/bin/bash
clear
echo "=============================="
echo "    HARRY-MAX OSINT SEARCH    "
echo "=============================="
echo "Master Harry, please enter a Username or Email."
read -p "Target: " target

if [[ $target == *"@"* ]]; then
    echo "Searching Email: $target..."
    holehe $target | grep "\[+\]"
else
    echo "Searching Username: $target..."
    # Sherlock ရဲ့ folder အဆင့်ဆင့်ထဲကို အတိအကျ ဝင်မယ်
    cd ~/patterharry401-stack-project/sherlock/sherlock_project
    # ဖိုင်ကို တိုက်ရိုက်မောင်းပြီး လိုအပ်တဲ့ Library တွေကို PYTHONPATH နဲ့ ချိတ်ပေးမယ်
    PYTHONPATH=.. python3 sherlock.py $target --timeout 1 --print-found
fi

echo "------------------------------"
echo "Search Completed, Master Harry."
