### Based on [the official documentation](https://docs.nvidia.com/jetson/l4t/index.html#page/Tegra%2520Linux%2520Driver%2520Package%2520Development%2520Guide%2Fhw_setup_jetson_io.html)

- Create the tree overlay .dts file  (e.g `my-overlay.dts`)
- Compile the .dts file into a DTS overlay (.dtso) `dtc -O dtb -o my-overlay.dtbo -@ my-overlay.dts`
