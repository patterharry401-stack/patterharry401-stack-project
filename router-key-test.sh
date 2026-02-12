#!/bin/bash
echo "=========================================="
echo "    HARRY-MAX: ROUTER ACCESS TEST         "
echo "=========================================="
echo "[!] Target Identified: 192.168.1.1"
echo "[!] Testing Ports: 23 (Telnet), 80 (HTTP)"

# မာဆာတာကီထဲက ရွှေရောင်သော့များကို စမ်းသပ်ခြင်း
KEYS=("admin" "password" "1234" "admin123" "root")

for user in "admin" "root"; do
    for pass in "${KEYS[@]}"; do
        echo "[+] Trying Login: $user / $pass"
        # ဤနေရာတွင် စမ်းသပ်မှု Logic များ ထည့်သွင်းနိုင်သည်
    done
done

echo "=========================================="
echo "[?] ဆရာ... Browser ကနေ 192.168.1.1 ကို အရင်ဝင်ကြည့်ပါ"
echo "[?] အဆင်ပြေရင် အိမ်ဆောက်တာကို ဒီ Router ဒေတာတွေနဲ့ ဆက်လုပ်မယ်"
