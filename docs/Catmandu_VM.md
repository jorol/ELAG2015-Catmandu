# Catmandu Virtual Machine

## Software requirements

* Download and install VirtualBox <https://www.virtualbox.org/wiki/Downloads>

Windows user only:

* Download and install a ssh client (e.g. Putty <http://www.chiark.greenend.org.uk/~sgtatham/putty/>)
* Download and install a scp client (e.g. WinSCP <http://winscp.net/eng/docs/lang:de>)
* Download and install a text editor (e.g. Notepad++ <http://notepad-plus-plus.org/>)

## VM

* Download the virtual machine (VM) image: 
    - [Debian Jessie XFCE](http://catmandu:catmandu@jorol.de/catmandu/Debian-Jessie-XFCE-Catmandu.ova)
* Import the VM in VirtualBox (see [documentation](https://docs.oracle.com/cd/E26217_01/E26796/html/qs-import-vm.html))
* Start the virtual machine (and connect via ssh). 
  
### User / Password

    - root / catmandu
    - catmandu / cat

### SSH from HOST to GUEST 

Enable _port forwarding_ to connect to the virtual machine via SSH:

* select the VM and click _Settings_

![Settings](settings.png "Settings")

* select the _Network_ menu and _Adapter 1_

![Network](network.png "Network")

* click the _Advanced_ button
* click the _Port Forwarding_ button and add a new rule:

![Port Forwarding](port_forwarding.png "Port Forwarding")

Now you can SSH from host to guest:

```terminal
    ssh -p 3022 catmandu@127.0.0.1
```

### Set keyboard layout

via terminal:

```terminal
# root
$ su
# change layout
$ dpkg-reconfigure keyboard-configuration
# restart
$ shutdown -r 0 
```

via GUI:

* select _"Applications Menu -> Settings -> Keyboard -> Layout"_
* disable the _"use system default"_ checkbox
* _+Add_ a new layout 