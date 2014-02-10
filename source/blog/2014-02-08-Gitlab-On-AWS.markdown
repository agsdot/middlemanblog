---
title: Gitlab on AWS
summary: Github, bitbucket, or others....
tags: AWS, Amazon, EC2, Cloud, devops, Gitlab, git
---

So the other night, I got [nginx](http://wiki.nginx.org/Main) up and working and hosting a personal site on AWS and aliased to a domain.  Pretty neat.

Got a message from a good friend asking what one could do with it.  Honestly, not quite sure yet. But there are things that would be awesome: hosting an [owncloud](http://owncloud.org) instance on it, a [gitlab](https://www.gitlab.com/) instance on it, and of course personal websites as well as websites developed on an mvc framework like [rails](http://rubyonrails.org/) or [django](https://www.djangoproject.com/) or [express](http://expressjs.com/).

Onto gitlab, I got it installed based on actually and ironically a non AWS resource from DigitalOcean ([How To Set Up GitLab As Your Very Own Private GitHub Clone](https://www.digitalocean.com/community/articles/how-to-set-up-gitlab-as-your-very-own-private-github-clone)).  Instructions were fairly easy to follow.

Took a while though because AWS was dropping the ssh sessions, either that or my wifi.  After it stabilized, I was able to pretty much follow the instructions word for word.  I got this lurking feeling though, I don't want this to be like some old wordpress 5 minute installs of yore...just following the manuals.  Granted this, gitlab install, is more like a 50+ minute install vs 5 minutes.  Maybe add some multiples onto that too, add a dollup.  It takes a lot more time.

No but seriously, I want to customize the install more.  Three things in particular:

- get gitlab on a subdirectory instead of a root level domain
  - Something at www.domain.com/subdir vs www.domain.com for the gitlab instance
- How does one setup the email accounts on this?
- How does one upgrade this thing?

Anyhow, those are my ponderings.  And for both of them, they'll take a deeper look (shoot, I'm looking for the right Alice In Wonderland analogy) into both nginx and gitlab documentation.

So much to learn...

But what are the benefits over Github and Bitbucket?  Well for one, you don't have to fork over (hahaha, pun intended) 7 bucks per for 5 private repo.  Host an unlimited ammount!

Fork over money for AWS.  Have to care for some of the maintenance of a git remote tool and perhaps not stay on the bleeding edge of git tools and git advancements.  But for private projects?  How can you beat something thats pennies on the dollar?

Well sometimes paying for SaaS is worth it.  Paying for wordpress.com and their domain aliasing vs wordpress.org . Perhaps when one makes bucket loads of cash and doesn't want to deal with security, and just have someone else deal with security and upgrades.

Hum...until then, lets work the world of Free and open source software.


JL
