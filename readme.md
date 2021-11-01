[![Build status](https://travis-ci.com/icasimpan/quicktasks-golang.svg)](https://travis-ci.com/icasimpan/quicktasks-golang)

*What is this*

Is my personal notes on Golang, written with the help of hugo.

*Adding Notes*
1. Ensure hugo is installed. For details, refer to https://gohugo.io/getting-started/installing/
2. Clone the project.
```
git clone https://github.com/icasimpan/quicktasks-golang.git
```
3. Add new notes
```
hugo new posts/your-new-blog-post.md
```
4. Edit your note file in #3
5. Commit changes to git
```
git commit "My new awesome note!"
```


*Publish*

Every change is auto-published via TravisCI and becomes accessible as https://ismael.casimpan.com/quicktasks-golang


Hugo version tested: v0.49.2

Theme version used: https://github.com/icasimpan-oss/basics (HEAD: f5338db) as it has fixes not applied yet
                    to upstream https://github.com/arjunkrishnababu96/basics (HEAD: 93d2a49) that I need, as follow:
                    * #8 - css breaks when baseURL is not /
                    *    - updated title so it points to correct baseURL
