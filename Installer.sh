pkg update -y
pkg upgrade -y
git clone https://github.com/NganDii/oneclick
cd oneclick && bash oneclick.sh 
cd ~/setup && rm -rf oneclick
cd /data/data/com.termux/files/home
git clone https://github.com/NganDii/ngrokold
printf "\e[1;93m\n\n\n1. You will be redirected to a link in your Browser\n2. Go to https://dashboard.ngrok.com/get-started/setup\n3. Log in or Create an Account\n4. Under 2. Connect your account  copy the TOKEN and come back here\n\n\n\e[91mPress Enter if you want to directly goto browser\e[0m\n"    
ngrok="https://dashboard.ngrok.com/get-started/setup"
read r
termux-open-url $ngrok
cd ngrokold && bash Install.sh
cd ~ && rm -rf setup 
echo "Successful"
