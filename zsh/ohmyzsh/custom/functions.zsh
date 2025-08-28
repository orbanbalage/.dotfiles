# 2022-11-23: MOVED FROM .zshrc


# How do I convert a video to GIF using ffmpeg, with reasonable quality?
# https://superuser.com/q/556029/103820
# Convert video to gif file.
# Usage: video2gif video_file (scale) (fps)
#video2gif() {
#  ffmpeg -y -i "${1}" -vf fps=${3:-10},scale=${2:-320}:-1:flags=lanczos,palettegen "${1}.png"
#  ffmpeg -i "${1}" -i "${1}.png" -filter_complex "fps=${3:-10},scale=${2:-320}:-1:flags=lanczos[x];[x][1:v]paletteuse" "${1}".gif
#  rm "${1}.png"
#}



# Open manpages as PDF in Preview
# stopped working in Ventura??
#mana () {
#man -t $@ | open -f -a /System/Applications/Preview.app
#}

wifi_fix() {
	sudo networksetup -setnetworkserviceenabled Wi-Fi off
	networksetup -setairportpower Wi-Fi off
	sleep 2
	sudo sysctl -w net.link.ether.inet.arp_unicast_lim=0
	sudo arp -a -d
	sleep 2
	networksetup -setairportpower en0 on
	sudo networksetup -setnetworkserviceenabled Wi-Fi on
}

dns_fix(){
	sudo dscacheutil -flushcache 
	sudo killall -HUP mDNSResponder
	}
