---
title: Vimtastic Magic
summary: oh I wish that was alliterative
tags: vim, shortcuts, commenting
--- 

Went to a meetup tonight at Pivotal Labs. Its quite interesting, each
time I goto a "pair programming" meetup, they each have their own flair.

Protonight at OpenTable: very structured
Academia.edu: very freeform
Pivotal: round table discussion of issues

Pro's and con's to each.  

Tonight though, as a peripheral benefit to having a db question I had
addressed, I got to meet some friends from other bootcamps. (One from
Dev and one from App).

One of them, I got to talking about MacVim.  For the longest of times, I
was wondering what was the best way to comment out things.  

He mentioned using Visual Blocks to have the cursor do actions in more
than one spot.  I had seen this once done before by
[Erik](http://www.github.com/sferik), but never really knew how to do
it.

Ctrl-v then highlight the text you want to act on.  Then do the
keybinding for i or a, to do before or after, then enter a comment text
such as `//` or `#` . (revised: After that, type capital "I" to insert
for all highlighted lines. Type the comment, in this case "#<Space>".
Then hit "Esc".)  On practicing this again, I went to the [Vim Wikia](http://vim.wikia.com/wiki/Commenting_out_a_range_of_lines) and
saw it documented once again.

Interesting stuff.  And you know what, thats not such a bad way to do
highlighting.  Manual but intuitive.  

The guy from Dev Bootcamp also shoed me the basics of vimrc files.
Mighty cool stuff man.


JL

P.s. This also looks like another fantastic [Vim
Resource](http://www.oualline.com/vim/10/top_10.html)
