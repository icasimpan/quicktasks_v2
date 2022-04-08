[![Build status](https://travis-ci.com/icasimpan/quicktasks.svg)](https://travis-ci.com/icasimpan/quicktasks)

*What is this*

Is my personal notes on technologies I've encountered/used, written with the help of hugo.

*Adding Notes*
1. Ensure hugo is installed. In Ubuntu (tested in WSL2 as well), do it this way:
```
~$ curl -OL https://github.com/gohugoio/hugo/releases/download/v0.96.0/hugo_extended_0.96.0_Linux-64bit.deb
~$ sudo apt-get install ./hugo_extended_0.96.0_Linux-64bit.deb
```
Check the latest Hugo releases from https://github.com/gohugoio/hugo/releases

For installation details, refer to https://gohugo.io/getting-started/installing/

2. Clone the project.
```
~$ git clone https://github.com/icasimpan/quicktasks.git
```

3. Prep the theme
```
~$ git submodule init
~$ git submodule update
```

4. Add new notes
```
hugo new posts/your-new-blog-post.md
```

5. Edit your note file in #4

6. Test your changes locally
```
~$ hugo server
```
It will probably be accessible as http://localhost:1313/quicktasks/

7. Commit changes to git
```
~$ git commit "My new awesome note!"
~$ git push
```


*Publish*

Every change is auto-published via TravisCI and becomes accessible as https://ismael.casimpan.com/quicktasks/
