cd /tmp/
wget https://chromedriver.storage.googleapis.com/2.37/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver
#show version
echo "$(tput setaf 1)"
chromedriver --version
echo "$(tput sgr 0)"
#download install
curl https://intoli.com/install-google-chrome.sh | bash
sudo mv /usr/bin/google-chrome-stable /usr/bin/google-chrome
echo "$(tput setaf 1)"
google-chrome --version && which google-chrome
echo "$(tput sgr 0)"
#install python first
sudo yum install -y python34-setuptools
sudo easy_install-3.4 pip
#install selenium
pip3 install selenium --user
