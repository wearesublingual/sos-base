echo "Replace buggy native Zoom client with webapp"

if sublingual-os-pkg-present zoom; then
  sublingual-os-pkg-drop zoom
  sublingual-os-webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png
fi
