---
title: Yeah Got Links Configured
summary: Middleman Blog installation progress
tags: learning, middleman, blogging, links
---

Status tech update as to how this blog "install" or more aptly stated configuration is coming along.

For the longest of time, two plus days (yah, I know that is the longest of time, sarcasm intended), I was wondering why the blog links from the profile page were resolving to: [agsdot.github.com/blog](http://agsdot.github.com/blog) instead of [agsdot.github.com/middlemanblog/blog](http://agsdot.github.com/middlemanblog/blog) .

Its all in the forward slash URL baby.

An href with `<a href="/blog/markdownpath">` vs `<a href="blog/markdownpath">` goes to the root of the installation, whereas href="blog" goes relatively into the next subdirectory.

Good to know.  Great troubleshooting this and finding it out at a HackNight at Academia.edu tongith on 7/9/13 in SF.  Someone there also helped me remove that preceding slash with a regex.  I'll analyze the code more and explain it again with another blog post.

JL

P.s. Still to do on this blog:
1) Rename it!  agsdot.github.io/middlemanblog/blog is hecka ugly for syntax, I'll make it "prettier" sounding/more euphonistic as well as make more sense!
2) Work on integrating the disqus comments in it.
3) Get me some practice on Haml and markdown.  Markdown by virtue of these 'ere' blog posts.  Haml by virtua of thats the main templating language I'm using rigth now I'm formatting for this middleman app.