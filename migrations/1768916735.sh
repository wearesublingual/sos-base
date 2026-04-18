echo "Fix microphone gain and audio mixing on Asus ROG laptops"

source "$SUBLINGUAL_OS_PATH/install/config/hardware/asus/fix-mic.sh"
source "$SUBLINGUAL_OS_PATH/install/config/hardware/asus/fix-audio-mixer.sh"

if sublingual-os-hw-asus-rog; then
  sublingual-os-restart-pipewire
fi
