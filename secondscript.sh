# Installing Dependencies
echo "##############################"
echo "Installing packages"
echo "##############################"
sudo yum install wget unzip httpd -y
echo

# Start & enable service
echo "##############################"
echo "Start & Enable HTTPD Service "
sudo systemctl start httpd
sudo systemctl enable httpd
echo


echo "##############################"
echo "Starting Artifact Deployment"
echo "##############################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/download/2130_waso_strategy.zip
unzip 2130_waso_strategy
sudo cp -r 2130_waso_strategy/* /var/www/html/

# Boun:ce Service
echo "##############################"
echo "Restarting HTTPD service"
echo "##############################"
systemctl restart httpd
echo

# Clean up
echo "##############################"
echo "Removing Temprory files"
echo "##############################"
rm -rf /tmp/webfiles


