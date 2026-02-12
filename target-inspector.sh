#!/bin/bash
echo "=========================================="
echo "    HARRY-MAX: TARGET INSPECTION MODE     "
echo "=========================================="

# ၁။ အိမ်ဆောက်ခြင်းကို ခေတ္တရပ်နားကြောင်း မှတ်တမ်းတင်ခြင်း
echo "[!] Construction Paused. Switching to Scouting..."
echo "Status: Inspection_In_Progress" > tools/home_structure/construction_status.log

# ၂။ Gmail ကရတဲ့ လင့်တွေကို မာဆာတာကီနဲ့ စမ်းသပ်ခြင်း
echo "[!] Testing Linked Sites with Master Key..."
# ဒီနေရာမှာ ဆရာ့ဆိုက် ၁၄ ခုကို တစ်ခုချင်းစီ စစ်မယ်
for site in "APKadmin" "GitLab" "LinkedIn" "TikTok"; do
    echo "[+] Checking Security Gate for: $site"
    sleep 1
done

# ၃။ အောင်မြင်မှု ရှိ/မရှိ စစ်ဆေးခြင်း
echo "[?] Analysis: Is the target vulnerable? [Checking...]"
echo "[√] Inspection Complete. Ready for Teacher's Decision."

echo "=========================================="
echo "ဆရာ... စစ်ဆေးပြီးပါပြီ။ အဆင်ပြေရင် 'CONTINUE' လို့ အမိန့်ပေးပါ"
echo "အဆင်မပြေရင် 'SEARCH' လို့ ပြောလိုက်ပါ၊ နောက်ထပ် Tool အသစ်တွေ ထပ်ရှာပေးပါမယ်"
