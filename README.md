SMRT Git
==

Inspired by [MetroGit](https://github.com/vbarbaresi/MetroGit), which shows Paris' metro lines in the form of a Git commit history, I created a Singaporean version. This Git repository contains all the MRT stations in Singapore (excluding LRT).

- They can be visualized in the GitHub network view: https://github.com/yangshun/smrt-git/network
  ![Imgur](http://i.imgur.com/ZUBRz0S.png)

- Sourcetree:
  ![Imgur](http://i.imgur.com/Js00Ub7.png)

- And other git commands and tools such as `gitk` and `git log --all --graph`.

### Generating the Commits

Simply do:
```
$ ./script.sh
```

This script is incredibly meta. It wipes out the current git repository, adds itself and `README.md` to master, then proceeds to generate the commits on other branches. 

If you want to push to a remote repository, modify the remote at the end of `script.sh` and append `push` to the generation command:
```
$ ./script.sh push
```

The original SMRT map referred can be found here at http://i.imgur.com/1xM3bVC.gif.

![Imgur](http://i.imgur.com/1xM3bVC.gif)

### Contributing

I hacked this out in a few hours and there might be bugs and discrepancies. Feel free to fork and submit patches!
Would also love to hear your feedback on how it can be improved!
