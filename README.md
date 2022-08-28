[![Netlify Status](https://api.netlify.com/api/v1/badges/de0dd0af-ac7b-4fcf-85eb-cd60de78dbe5/deploy-status)](https://app.netlify.com/sites/quicktasks-ismael/deploys)

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
~$ git clone --recursive https://github.com/icasimpan/quicktasks.ismael.casimpan.com.git
```

3. Add new notes
```
~$ hugo new post/your-new-blog-post.md
```

5. Edit your note file in #3

6. Test your changes locally
```
~$ hugo server
```
It will probably be accessible as http://localhost:1313/

7. Commit changes to git
```
~$ git commit "My new awesome note!"
~$ git push
```

*Publish*

Every change is auto-published in Netlify and becomes accessible from https://quicktasks.ismael.casimpan.com/
