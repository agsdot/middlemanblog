---
title: Tumblr To Middleman The Journey Commences
summary: And they're off!   
tags: Migrations, Blogs, Tumblr, Middleman, Jekyll, Markdown
---

Oh yeah!!! I did it, I've done the first step, probably the biggest/most major step in getting all my posts from Tumblr to Markdown.  I leeched off (yes a very vivid word, I'm searching for a more fine tuned benevelont term, but that'll have to do for now) the post from Tumblr in Markdown format?

How you say?  Well, I googled for Tumblr > Middleman exporters or importers or what have you.  Didn't find them.  

So what do you do? You go in the round-about fashion and you make it work anyway.  This is/was the plan. I setup a temp jekyll instance. Then I used a jekyll-import gem, and collected all my posts from Tumblr in Markdown format. Little wiggle, jiggle, and I got it to work.  Then used a cool bash script to rename the files from *.md to *.markdown.  Pretty nifty, eh?

I'll give the details later.

JL

P.s. Yes details and perhaps the scripts will follow later. Also, need to polish off those 20 plus imported posts. Formatting stuff, link stuff, tags. Minor things.  Majority/brunt of the work is done. Tada!

P.s.s. Ok fine fine, lol, more so I can remember/record the bash script for renaming things, here goes  

`for file in *.md ; do mv $file `echo $file | sed 's/\(.*\.\)md/\1markdown/'` ; done`

I found it on this stacksoverflow [post](http://stackoverflow.com/questions/9590935/change-extension-of-file-using-shell-script)

Just apply it in the directory of interest.  Had a folder with a bunch of .md files.  Applied it with bash in the terminal, then they were all renamed.  Cool stuff, Mr. Bourne Again Shell (Script Terminal).