# jn-scripts

## Who does what ? 

- `jn_sd_resize.sh` resizes the SD card partitions to use all instead of the original 16GB. 
(Tested of JetPack4.3). Thanks to 
[this post](https://devtalk.nvidia.com/default/topic/1050105/jetson-nano/jetson-nano-sd-card-partitions-can-not-extend-/post/5393113/#5393113) on nvidia dev forum.
- `create_8Gswap.sh`, creates an 8GB swap memory on disk. Pretty practical for 
installation. Thanks to [this post](https://jkjung-avt.github.io/setting-up-nano/).


## Reminders
- To use the GPIO remapping tool, run this once `sudo find /opt/nvidia/jetson-io/ -mindepth 1 -maxdepth 1 -type d -exec touch {}/__init__.py \` before running this `sudo /opt/nvidia/jetson-io/jetson-io.py`
- Default python is linked to python2, unlink python2 and link python3 by default.


## Resources
- Power your board through the barel jack so you can have the 
best performances (don't forget to run `sudo nvpmodel -m 0`).
See [this video](https://www.youtube.com/watch?v=jq1OqBe267A). 

- You can connect to the board without screen keyboard and mouse 
  - Using USB to TLL cables. See 
  [this post](https://desertbot.io/blog/jetson-nano-usb-login/) for more 
  instructions for that. 
  - Through USB. Connect the board using te barrel jack. Connect USB to your host with 
  `screen /dev/ttyACM0 115200`. I prefer using `tio`, it handles colors better and I 
  can still use `Ctrl + A`. The command looks like `tio /dev/ttyACM0 --baudrate 115200`.
  Consider using [termsize](https://github.com/akkana/scripts/blob/master/termsize) to 
exploit the terminal size fully over serial terminal. 
  - Through SSH, connect the board to wifi, get IP adress (with ifconfig for example)
  and run `ssh <username>@<ipadress>`

- [Nice post](https://www.hackster.io/news/getting-started-with-the-nvidia-jetson-nano-developer-kit-43aa7c298797) 
about the Nano in general, sets up remote desktop. 

- Device tree overlays to reconfigure the 40-PIN GPIO header 
[here](https://docs.nvidia.com/jetson/l4t/index.html#page/Tegra%2520Linux%2520Driver%2520Package%2520Development%2520Guide%2Fhw_setup_jetson_io.html)

- Build kernel and modules locally after building, 
[video here](https://www.youtube.com/watch?v=Fu2x87YJUo0&t=312s).

- Pisound support for Tinkerboard, 
[see here](https://community.blokas.io/t/pisound-on-tinker-board/1015).


### Tools 
- `jtop` is nice to monitor GPU usage. Install with `sudo -H pip install jetson-stats`.
See [here](https://github.com/rbonghi/jetson_stats).


### Installing
- Tensorflow, instructions [here](https://devtalk.nvidia.com/default/topic/1048776/jetson-nano/official-tensorflow-for-jetson-nano-/).
- Soundcard : 
```bash
sudo apt install libffi-dev python-cffi
sudo pip install soundcard 
```
