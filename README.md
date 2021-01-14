# thinkfan_charging on T440p
Thinkfan ON when charging


These goes to /etc/
- thinkfan.conf
- thinkfan_charging.conf
 
This goes to /usr/local/bin/
- fan_charging.sh


These goes to /etc/systemd/system/
- fan-when-charging.service
- fan-when-charging.timer


Reason for this is that on Linux the fan rarely spins when on battery unless you're compiling or doing something heavy.
Also when you charge without fan the top cover where you rest your left palm gets quite toasty.
