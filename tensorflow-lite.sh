
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | sudo tee /etc/apt/sources.list.d/coral-edgetpu.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install python3-tflite-runtime
git clone https://github.com/tensorflow/examples.git --depth 1
sudo mkdir /home/ece/test
sudo chmod 775 /home/ece/test
cd /home/ece/tensorflow/
sudo mv rpicam.py /home/ece/examples/lite/examples/object_detection/raspberry_pi/
cd /home/ece/examples/lite/examples/object_detection/raspberry_pi/
sudo bash download.sh /home/ece/test

