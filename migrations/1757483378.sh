echo "6Ghz Wi-Fi + Intel graphics acceleration for existing installations"

bash "$SUBLINGUAL_OS_PATH/install/config/hardware/set-wireless-regdom.sh"
bash "$SUBLINGUAL_OS_PATH/install/config/hardware/intel/video-acceleration.sh"
