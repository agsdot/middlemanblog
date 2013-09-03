---
title: Vagrant Setup
summary: Deployment tools, my oh my
tags: vagrant, deployment, development, ops
---

Wow, just wow.  I spent the past two days (luckily nothing today, or else my brain just might bust) setting up a vagrant setup for development.  Saturday and Sunday, and learning a whole lot.

I setup a ubuntu precise pangolin 64 virtual machine box (using virtualbox) for basic tools (make, curl, git, etc), nodejs, ruby, and python.  Also thru in a bit of quick-vim for kicks as well.  Now, I can say that I have used shell scripts and implemented them on a small scale.  

Go on, check it out.  After you install virtualbox, Clone the following repo and implement it.

`git clone git@github.com:agsdot/vagrant_precise64.git`

Basically three commands you need to know:
`vagrant up`
`vagrant suspend or vagrant halt`
`vagrant destroy`

You'll be raring to go.

JL

P.s. Point of not, yes clone the repo, but reset to the commit thats around 9/1/13, as those are the current commits using just a vagrant file and shell scripts. Who knows, in the future, I may try to implement something like chef.  