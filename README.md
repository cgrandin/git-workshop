---
# git-workshop

**Created by Chris Grandin, February 2014**

git-workshop is a repository for learning how to use git version control.
Also included are examples for using *Latex* and the R package *knitr* to apply version control to documents
which are to be edited by more than one person, working collaboratively.


The purpose is to introduce git version control to new users and supply some
useful tools for working with git.

---

To make everything in this repository work correctly, you will need to [sign up for Github](https://github.com/ "Create account on Github"),
and install the following things on your computer:

1. [Microsoft .NET 4.5.1](http://go.microsoft.com/fwlink/p/?LinkId=310158 ".NET 4.5.1")
2. [Github for Windows](http://windows.github.com "Github for Windows")
3. [Miktex typesetting software](http://mirrors.ctan.org/systems/win32/miktex/setup/basic-miktex-2.9.5105-x64.exe "Miktex")
4. The knitr package for R - install.packages("knitr")

---

Once you have installed github for Windows, open the Git Shell and type the following to get the repository:

      git clone https://github.com/cgrandin/git-workshop

## Useful commands in the Git Shell

      git help                          <List git commands>
      git clone url                     <Clone repository found at url>
      git status                        <View changes & staging>
      gitk                              <GUI - show revision tree information>
      git gui                           <GUI - show revisions, merge branches>
      git remote -v                     <Look at all remote data sources (URLs)>
      git add FILENAME                  <Add new file called FILENAME>
      git remove FILENAME               <Remove existing file called FILENAME>
      git rm FILENAME                   <Remove existing file called FILENAME>
      git commit -a -m "MESSAGE"        <Commit with MESSAGE recorded to the log>
      git log                           <View commit log>
      git branch                        <List all branches>
      git checkout -b NAME              <Create new branch called NAME>
      git checkout NAME                 <Switch to already-existing branch called NAME>
      git branch -d NAME                <Safely delete the branch called NAME>
      git branch -D NAME                <Forcibly delete the branch called NAME>
      git log branchA ^branchB          <show log of commits in branchA but not in branchB>
      git log master ^origin/master     <Show difference between local master and origin/master (latest copy of remote)>
      git push origin --delete NAME     <Delete the branch NAME from the remote>
      git reset HEAD~N                  <Move back N commits, keeping changes from last N-1 commits>
      git reset --hard HEAD~N           <Move back N commits, destroying changes made in latest N-1 commits>
      git log --diff-filter=D --summary <Shows all files which were ever deleted and then committed>

## Useful Git aliases
      git r                             <View remote URLs for the project, same as 'git remote -v'>
      git s                             <View status of the repository, same as 'git status'>
      git f                             <View sync information between remote/master and master>
      git co  "NAME"                    <Change to branch "NAME", same as 'git checkout "NAME"'>
      git cb  "NAME"                    <Create branch "NAME", same as 'git checkout -b "NAME"'>
      git com "MESSAGE"                 <Commit all with message, same as 'git commit -a -m "MESSAGE"'>
      git pom                           <Push to origin/master (Github), same as 'git push origin master'>
      git mas                           <Show difference between local master and origin/master, same as 'git log master ^origin/master'>
      git sam                           <Show difference between origin/master and local master, same as 'git log ^master origin/master'>
      git dl                            <Show modified files in last commit>
      git dlc                           <Show file differences in last commit>
      git lg                            <Show merge structure in a colored format>
      git lds                           <Show one-line commits in a colored format>
      git ld                            <Show one-line commits with reletive times in a colored format>
      git wdiff                         <Highlight individual words when diffing, same as 'idiff --word-diff=plain'>

There are many online resources for GIT and most of them can be found at: http://git-scm.com/documentation

A very useful video tutorial, a must watch if you will be using GIT: http://www.youtube.com/watch?v=ZDR433b0HJY

---

