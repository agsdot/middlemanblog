---
title: S3 and Domain Name Aliasing
summary: Theres (not) a hole in the bucket...
tags: S3, AWS, domains, nameservers
---



I remember writing around Jan 28-29 about setting up a domain name with S3 and Route 53.  Honestly, with the past couple days doing things with nginx and EC2 and then later gitlab installations some of the S3 stuff is now a little fuzzy.

But I'm gonna do it. Fulfill that commitment to document "it" / what I did in a future post.  So here goes.

First things first: follow pre-existing documentation.  I'm not sure how the permalinks will change in the future for AWS, just do a google search for "Setting Up a Static Website Using a Custom Domain".

In the S3 section of the console, I created three buckets.

- domain.org
- logs.domain.org
- www.domain.org

Let me go through each of them

In domain.org, in "Static Web Hosting" I selected the radio button parameter for "Enable website hosting" and put the following in the fields for Index Document and Error document: index.html and error.html.  Logging was set to enabled and the target bucket was/is logs.domain.org . Target prefix set to root.

In logs.domain.com , I forgot how this got there honestly, but there is a subfolder called root, which by now, mid/early feb has a bunch of logs inside.  Hum...google for that one once again.

Anyhow to the aliasing part and that which I was frustrated with, and then it somehow set in, don't ask me how, maybe the whole dns servers updating on the internetz and all.  Ok www.domain.org how was this setup? In properties, in the category "Static Website Hosting" the radio button for "Redirect all requests to another host name" was selected, and in the text field for "Redirect all requests to" the following was typed in: domain.org

That in and of itself allows one to have a domain.org.s3-website-us-west-2.amazonaws.com type of website.

But one wants to get to the good stuff and have
domain.org and www.domain.org goto the content of the website.

Here's where its good to google the amazon documentation for "Migrating an Existing Domain to Amazon Route 53"

In my 1and1 panel--I use both 1and1 and namecheap.  Been satisfied with them both.  Lifehacker though recommends for the value hunter to use namecheap.  Can't complain. Anyhow, in the 1and1 panel for DNS settings, I basically put the four aws route53 name servers there.  Thats it on the registrars end.

Then in the AWS Route 53 console I do the following.

Create an eltux.org Hosted zone.

Then within that hosted zone, the following need to be configured:


| Left align        | Right align       | Center align |
|:------------------|:------------------|:-------------|
| domain.org        |      A            |     Alias s3-website-us-west-2.amazonaws.com.
| domain.org        |      NS           |    4 name servers from Route 53, .org .co.uk .net and .com
| domain.org        |      SOA          |     I think this already existed, (ns-1094.awsdns-08.org. awsdns-hostmaster.amazon.com.  5 number sets)
| www.domain.org    |      CNAME        |      www.domain.org.s3-website-us-west-2.amazonaws.com

For the first one
name is just domain.org
Type is A IPv4 address
Alias is YES
Alias target is s3-website-us-west-2.amazonaws.com.

For the second one
Type is NS - nameserver
Alias is NO
Values are the 4 IP addresses from the Route53 nameservers
Routing policy is simple

For the third one,
I honestly don't recall touching this one, but this is documentation for posterity's sake and also if I need to repeat the procedure:
Type: SOA Start of Authority
Alias NO
Values Those values listed above in the table
Routing policy simple

For the fourth one
Type: CNAME
Values: www.domain.org.s3-website-us-west-2.amazonaws.com
Routing Policy: Simple

Let time pass and the settings kick in on the global dns servers.  And then tada it worked.

Wow...that was a bucketful. Pun intended, hahaha.

Hum...things I forgot

- How did I get those four nameserver addresses from Route 53?  Hum...I'll have to go into the Amazon docs again for that, and google those two documents.
- Did I really need to use Route53 for setting up the domain names for S3?  It costs 50 cents a month.  Not terribly expensive, but if I already pay for a domain per year with namecheap and 1and1, and I don't get a terrible amount of traffic, why fork over 50 cents a month to AMZN.

Anyhow, just ponderings, and thoughts after typing up a very long post documenting my AMZN S3 experimentations.

Enjoy folks,


JL