#!/bin/bash
# firefox
wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
tar -zxvf geckodriver-v0.26.0-linux64.tar.gz -C ${{github.workspace}}
# chrome
version=$(google-chrome --version)
v=${version:14:2}
if [ $v="78" ]
then
    chromedriver_verion="78.0.3904.70"
elif if [ $v="79" ]
then
    chromedriver_verion="79.0.3945.36"
elif if [ $v="80" ]
then
    chromedriver_verion="80.0.3987.16"
elif if [ $v="81" ]
then
    chromedriver_verion="81.0.4044.20"
fi
wget http://chromedriver.storage.googleapis.com/${chromedriver_verion}/chromedriver_linux64.zip
unzip -d ${{github.workspace}} chromedriver_linux64.zip
