____
# git-workshop

git-workshop is a teaching repository created by Chris Grandin on Feb 10, 2014

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

## Useful Git aliases
      git co  "NAME"                <Same as 'git checkout "NAME"'>
      git cb  "NAME"                <Same as 'git checkout -b "NAME"'>
      git com "MESSAGE"             <Same as 'git commit -a -m "MESSAGE"'>
      git mas                       <Same as 'git log master ^origin/master'>
      git pom                       <Same as 'git push origin master'>
      git dl                        <Show modified files in last commit>
      git dlc                       <Show file differences in last commit>
      git lg                        <Show merge structure in a colored format>
      git lds                       <Show one-line commits in a colored format>
      git ld                        <Show one-line commits with reletive times in a colored format>

## Advanced setup

These commands are used when you have two Github users setup on the same machine, using SSH keys.
The email address found in the .gitconfig file is the one used to push.

      git wu                        <Show which user is setup to commit next (must have ssh keys setup)>
      git u1                        <Switch to user 1 (cgrandin@shaw.ca)>
      git u2                        <Switch to user 2 (chrisgrandin@gmail.com)>


There are many online resources for GIT and
most of them can be found at: http://git-scm.com/documentation

A very useful video tutorial, a must watch if you will be using GIT: http://www.youtube.com/watch?v=ZDR433b0HJY

---

