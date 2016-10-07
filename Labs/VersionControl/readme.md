# Version control 

[Version control](http://en.wikipedia.org/wiki/Revision_control) systems keep a history of changes of your files and allow you to work collaboratively on files, merging changes done by different people. 

There are a lot of benefits of using such a system and virtually no costs --> **all scientific code should be under version control. Working in a team on code without version control inevitably ends in disaster**

There are different version control systems around, but effectively there is a clear recommendation at the moment, which is Git. 

# Git 

Git is a distributed version control system, and it is the one that is currently the most popular. 

### Getting started

* For a a simple video tutorial / intro to Git, click [here](https://www.youtube.com/watch?v=SCZF6I-Rc4I)

Although Git (as svn as well) can be purely run locally, it really makes sense to have a version of your files on the web, not only as backup. If you know nothing, try out GitHub, which is pretty popular in Science. See links below for how to get started with that. Tutorials specially for GitHub (a lot applies to Git as well)

* [Video intro to Git / GitHub](https://www.youtube.com/watch?v=U8GBXvdmHT4)
* [Video series](https://www.youtube.com/playlist?list=PLg7s6cbtAD15G8lNyoaYDuKZSKyJrgwB-)
* [GitHub help page](https://help.github.com/)
* [GitHub guids - excellent!!!](https://guides.github.com/)
* [How to Get Started with Github - Beginner Tutorial ](http://www.youtube.com/watch?v=73I5dRucCds)

### Software to install

To work with git locally, the minimum is to have the git software installed (command line). However, most people want to have a gui client for git. If you install one, the command line is usually included. I recommend 

* GitHub app (Windows, Mac, simple, but can't do everything, consider installing a second client)
* SourceTree (Windows, Mac - the eclipse of git clients)
* TortoiseGit (Windows, integrates git in the windows explorer)

If you install github, I would recommend installing SourceTree or TortoiseGit as well, because the GitHub is nice and easy, but a bit limited.

On Linux, peole seem to have trouble with whatever solution is out there. The best options seems to be the command line and [smartgit](https://www.syntevo.com/smartgit/). Let me know if there is a better option. 

### Further readings

Longer tutorials on git

* [Version Control and Unit Testing for Scientific Software, SciPy2013 Tutorial](http://www.youtube.com/watch?v=T0BE9ApIegc)
* [Introduction to Git with Scott Chacon of GitHub](http://www.youtube.com/watch?v=ZDR433b0HJY)
* [Introduction to Git - talk by Scott Chacon ](http://www.youtube.com/watch?v=xbLVvrb2-fY) - goes into technical details, don't do this as a fist introduction

## Student benefits

Github offers an excellent [pack for students](https://education.github.com/pack) that gives you access to GitHub (git repos) and a wide range of other software development and automatization systems - I do recommend to check this out if you want to try out a professional software development workflow. 

# SVN

SVN is the older working horse in the field. I don't see a reason to start new projects with svn, git is the better alternative. For historical reasons, many projects are still on svn, so there may be a reason to use it at some stage.

* I recommend [this tutorial](http://svnbook.red-bean.com/)

* In terms of software, use
 * tortoise svn for windows
 * no great free options available for linux and mac. You may as well use the command line. 
