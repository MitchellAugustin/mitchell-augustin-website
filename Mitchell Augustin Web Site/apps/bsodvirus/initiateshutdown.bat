shutdown -t 295 -s /c "Self-destruct sequence initiated"
powershell -c (New-Object Media.SoundPlayer "C:\\users\\public\\alert.wav").PlaySync();