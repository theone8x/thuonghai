echo "Download windows files"
wget -O w10x64.img https://bit.ly/akuhnetW10x64
echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
./ngrok authtoken 1wkvlxDZCwOOKswUDWlJQVwtgDr_6xCiJe2q4aJfgvnB6JTgR 
nohup ./ngrok tcp 3388 &>/dev/null &
echo Downloading File From akuh.net
apt-get install qemu
echo "Wait"
echo "Starting Windows"
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Ctrl+C To Copy"
echo "Wait 1-2 minute to finish bot"
echo "Dont Close This Tab"
echo "Please support akuh.net thank you"
qemu-system-x86_64 -hda w10x64.img -m 16G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic
sleep 43200





