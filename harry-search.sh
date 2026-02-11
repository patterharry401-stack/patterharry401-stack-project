#!/bin/bash
clear
echo "=============================="
echo "    HARRY-MAX OSINT SEARCH    "
echo "=============================="
echo "Master Harry, please enter a Username (e.g., patterharry401)"
echo "OR an Email (e.g., example@gmail.com)"
echo "------------------------------"
read -p "Target: " target

# ဆရာ မှားရိုက်တတ်တဲ့ စာသားတွေကို တားလိုက်ပြီ
if [[ $target == *"update.sh"* ]] || [[ $target == *"./"* ]]; then
    echo "!!! ERROR: ဆရာ... အဲ့ဒါ Command ကြီးလေ၊ နာမည်ပဲ ရိုက်ထည့်ပါဗျာ !!!"
    exit
fi

if [[ $target == *"@"* ]]; then
    echo "Searching Email: $target..."
    holehe $target | grep "\[+\]"
else
    echo "Searching Username: $target..."
    # Sherlock ရှိတဲ့ နေရာအမှန်ကို အတင်းဝင်ခိုင်းမယ်
    cd ~/patterharry401-stack-project/sherlock/sherlock_project/
    python3 sherlock.py $target --timeout 1 --print-found
fi

echo "------------------------------"
echo "Search Completed, Master Harry."
