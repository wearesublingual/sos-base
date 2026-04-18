echo "Change sublingual-os-screenrecord to use gpu-screen-recorder"
sublingual-os-pkg-drop wf-recorder wl-screenrec

# Add slurp in case it hadn't been picked up from an old migration
sublingual-os-pkg-add slurp gpu-screen-recorder
