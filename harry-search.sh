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
    # Sherlock folder ထဲကို အရင်ဝင်မယ်
    cd ~/patterharry401-stack-project/sherlock
    # Module အနေနဲ့ လှမ်းခေါ်တဲ့ ပုံစံအမှန် ( -m ) ကို သုံးမယ်
    python3 -m sherlock $target --timeout 1 --print-found
fi

echo "------------------------------"
echo "Search Completed, Master Harry."
