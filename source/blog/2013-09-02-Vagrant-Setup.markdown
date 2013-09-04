---
title: Vagrant Setup
summary: Deployment tools, my oh my
tags: vagrant, deployment, development, ops
---

Wow, just wow.  I spent the past two days (luckily nothing today, or else my brain just might bust) setting up a [vagrant setup](http://downloads.vagrantup.com/) for development.  Saturday and Sunday, and learning a whole lot.

I setup a [ubuntu](https://wiki.ubuntu.com/PrecisePangolin) precise pangolin 64 virtual machine box (using [virtualbox](https://www.virtualbox.org/)) for basic tools (make, curl, git, etc), nodejs, ruby, and python.  Also thru in a bit of quick-vim for kicks as well.  Now, I can say that I have used shell scripts and implemented them on a small scale.  

Go on, check it out.  After you install virtualbox, Clone the following repo and implement it.

`git clone git@github.com:agsdot/vagrant_precise64.git`

Basically three commands you need to know:
`vagrant up`
`vagrant suspend or vagrant halt`
`vagrant destroy`

You'll be raring to go.

JL

P.s. Point of not, yes clone the repo, but reset to the commit thats around 9/1/13, as those are the current commits using just a vagrant file and shell scripts. Who knows, in the future, I may try to implement something like chef.  

P.s.s.   
-For node, I used [Node Version Manager](https://github.com/creationix/nvm) from Tim Caswell ([creationix](https://github.com/creationix))  
-For ruby, I used [rbenv](https://github.com/sstephenson/rbenv) and [ruby-build](https://github.com/sstephenson/ruby-build).  I found that it setup easier than rvm. Moreso because of permissions.  
-For python, [Virtualenv](http://www.virtualenv.org/en/latest/) and [Pip](https://pypi.python.org/pypi/pip)

P.s.s.s. I found that yes, putting together the right shell script was important. But also permissions!  When one vagrant up's a box, it is under root permissions. Then if your installing under the root account, you have to make sure that things are accessible under the normal vagrant home user account in ~/ (/home/vagrant).  Have to make sure that ~/ in my scripts was always hardcoded to $HOME/something_something, where $HOME equated to /home/vagrant rather than /root/

