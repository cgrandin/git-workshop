____
# git-workshop

git-workshop is a teaching repository
Created by Chris Grandin on Feb 10, 2014

---

## Useful commands in the Git Shell

      git help                      <list git commands>
      git clone url                 <clone repository>
      git status                    <view changes & staging>
      gitk                          <GUI - show revision tree information>
      git remote -v                 <Look at all remote data sources (URLs)>
      git add FILENAME              <add new file called FILENAME>
      git remove FILENAME           <remove existing file called FILENAME>
      git rm FILENAME               <remove existing file called FILENAME>
      git commit -a -m "MESSAGE"    <commit with MESSAGE recorded to the log>
      git log                       <view commit log>
      git branch                    <list branches>
      git checkout -b NAME          <create new branch called NAME>
      git checkout NAME             <switch to already-existing branch called NAME>
      git branch -d NAME            <safely delete the branch called NAME>
      git branch -D NAME            <forcibly delete the branch called NAME>
      git log branchA ^branchB      <show log of every commit reachable by branchA but not branchB>
      git log master ^origin/master <show log of every commit not yet pushed to the origin master on GitHub>

There are many online resources for GIT and
most of them can be found at: http://git-scm.com/documentation

A very useful video tutorial, a must watch if you will be using GIT: http://www.youtube.com/watch?v=ZDR433b0HJY

---

