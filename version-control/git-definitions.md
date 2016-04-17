# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control allows changes to be tested and if necessary, reverted. This is useful if the changes case unintended problems, such as bugs and errors, an earlier version can be rolled back to.

* What is a branch and why would you use one?

A branch is a copy of the master project. You would use one to protect the master project from potentially bad/untested changes

* What is a commit? What makes a good commit message?

A commit is saved changes to files in a git repository. A good commit message concisely sums up changes made to files.

* What is a merge conflict?

Merge conflict is when one branch has changes made to a file and then additional changes are made to the original file the branch came from. For example if a branch adds a paragraph at the end of a txt file, I then switch to master and change only the first line of the txt file there would be a merge conflict if I tried to merge the branch.