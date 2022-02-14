---
title: "First Perl Program"
date: 2022-02-13T00:20:25+08:00
tags: [perl, programming]
draft: false
---

# Code
Let's call it `first.pl`
```
~$ nl -ba first.pl
     1	#!/usr/bin/env perl
     2	
     3	use strict;                        # important pragma
     4	use warnings;                      # important pragma
     5	
     6	print "What is your username? ";   # print out the question
     7	my $username = <STDIN>;            # ask for username
     8	chomp($username);                  # remove “new line”
     9	print "Hello, $username.\n";       # print out the greeting
```

# Check syntax
Make it a habit when coding in Perl.
```
perl -c first.pl
```

# Make executable
```
chmod u+x first.pl
```

# Sample Run
```
~$./first.pl 
What is your username? mikeymouse
Hello, mikeymouse.
```

"mikeymouse" was the keyboard input and taken using `<STDIN>` in line 7.
If you comment out line 8, then your output would become:
```
Hello, mikeymouse
.
```
for obvious reasons.

# Best Practice
As for line 3 and 4, it is best used always.
* `use strict` - tells the perl compiler to use the strictest possible rule
* `use pragma` - to warn you (the programmer) if there are questionable code
* check syntax - of course, the check syntax shown earlier
