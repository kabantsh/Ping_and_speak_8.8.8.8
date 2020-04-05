#!/data/data/com.termux/files/usr/bin/bash
MY_STR="Internet is Ok Mr. Mohammed Ayman"
MY_CMD='cowsay "Connected"'
pinging() {
echo "pinging 8.8.8.8"
for i in {1..1000}
do
ping -c 1 8.8.8.8 && $MY_CMD && termux-tts-speak $MY_STR
sleep 3
done
}

# Infinite Loop 
j=1
while [[ j -le 3 ]]
do
	pinging 
	sleep 3
done
