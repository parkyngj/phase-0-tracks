# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control systems are repositories of files that usually act as sort of "growth charts" for projects, usually code-related. They are useful because they allow collaborators of the same project to stay up to date with each contribution that is made. Version control allows collaborators to track each change, reverse changes when necessary, etc.

* What is a branch and why would you use one?

A branch is essentially a separate line of development from the original project. I would use a branch when I want to add a feature or fix a bug. Branches are useful because it adds a safeguard against buggy code becoming committed to the source.

* What is a commit? What makes a good commit message?

A commit is a way to record the cumulative (through using the command "git add") snapshot of changes that have been made in your branch. A good commit message is specific, descriptive, and concise.

* What is a merge conflict?

A merge conflict is what happens when the current branch you are working on, and the branch you would like to merge your current branch with, have deviated from each other. More specifically, it refers to when you have commits in the current branch that are not in the target merge branch, and vice versa. Resolution of a merge conflict requires looking at the two branches' latest common commit.