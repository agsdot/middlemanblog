---
title: Arch Install and Setup
summary: Archlinux on a Macbook
tags: linux, archlinux, devops, documentation, mac, osx
---

Got Arch installed and setup.  Even was able to boot into several desktop environments: lxde and xfce aren't bad. And actually gnome has a slick gui.

Anyhow, these three links have been invaluable:

- [http://panks.me/blog/2013/06/arch-linux-installation-with-os-x-on-macbook-air-dual-boot/](http://panks.me/blog/2013/06/arch-linux-installation-with-os-x-on-macbook-air-dual-boot/) 
- [http://codylittlewood.com/arch-linux-on-macbook-pro-installation/](http://codylittlewood.com/arch-linux-on-macbook-pro-installation/) 
- [https://vec.io/posts/use-arch-linux-and-xmonad-on-macbook-pro-with-retina-display](https://vec.io/posts/use-arch-linux-and-xmonad-on-macbook-pro-with-retina-display) 

Also this was pretty invaluable after the install

- systemctl enable dhcpcd.service

- [https://wiki.archlinux.org/index.php/Beginners%27_guide#Wired_2](https://wiki.archlinux.org/index.php/Beginners%27_guide#Wired_2)

It helped with getting the dhcp services/daemons configured on

They were great for getting things installed on my computer. Now as for wifi? That'll take digging a little further.

JL

*Update 3/27* 

This link seemingly helped.  [http://bababadalgharaghtakamminarronnkonnbro.blogspot.com/2014/01/arch-xmonad-gnome-on-macbook-pro-retina.html](http://bababadalgharaghtakamminarronnkonnbro.blogspot.com/2014/01/arch-xmonad-gnome-on-macbook-pro-retina.html).

Man, worked on the wifi issues for at least a good 3-4 hours.  Broadcom arg... There seemingly are three ways to get wifi possibly working, and they may conflict: b43, broadcom-wl, and broadcom-wl-dkms .  

May have had some conflicts and stuff like that. I tried all of them with aur and makepkg in the command line and going to various blog wiki forum posts. 

At the end of the evening, tried the yaourt package manager supplement to install broadcom-wl.  In uninstalled some conflicting broadcom-wl-dkms stuff.  Installed wicd. And then I actually had wifi working for a while! I posted the link to twitter with it.

Only thing is after reboot, there were some driver issues and conflicts. I don't know what happened.  Clean install? I may have to resort to that and only do the yaourt method of installing...

And then again, ubuntu has wifi drivers working out of the box I think for macbook. I'd really like to get them working on archlinux.

*Update 3/30*

I got wifi to work finally, that was late yesterday!!!! And consistently!!!!

How?  I followed the http://codylittlewood.com/ instructions to the nines, I got it working with the b43 drivers, the open source stuff vs the broadcom-wl ones. Man, dhcpcd vs NetworkManager.  Follow instructions completely and disable possibly conflicting services. Interesting.

Anyhow, on the way there, I reinstalled arch, got pretty familiar with tarball commands of xzf xjf or xJf for gz bz2 or xz files. And got familiar with cgdisk.  Fun stuffs, in all sincerety. I feel my commandlinefu is growing.

Man, today, also what I did I got me some git ssh keys setup for github wrapping stuff around startx with ssh-agent and got rbenv working.

I think I'm ready to start doing some development on this new box. Linux and all. With pacman, git 1.9 (vs older versions on a mac), a newer bash (4.3), not that it makes a difference, but good to know.

Seems near ready to roll!!!
