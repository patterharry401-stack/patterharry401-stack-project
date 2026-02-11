import smtplib
from email.mime.text import MIMEText
import sys

def send_mail(subject, body):
    sender = "patterharry401@gmail.com"
    receiver = "patterharry401@gmail.com"
    # မှတ်ချက်: ဆရာ့ Gmail ရဲ့ App Password ကို ဒီမှာ ထည့်ရပါမယ်
    password = "YOUR_APP_PASSWORD_HERE" 

    msg = MIMEText(body)
    msg['Subject'] = subject
    msg['From'] = sender
    msg['To'] = receiver

    try:
        with smtplib.SMTP_SSL('smtp.gmail.com', 465) as server:
            # server.login(sender, password) # Password ရပြီဆိုမှ ဒါကို ဖွင့်ပါ
            # server.sendmail(sender, receiver, msg.as_string())
            print("[+] Gmail Simulation: Report sent successfully!")
    except Exception as e:
        print(f"[-] Mail Error: {e}")

if __name__ == "__main__":
    subject = sys.argv[1]
    body = sys.argv[2]
    send_mail(subject, body)
