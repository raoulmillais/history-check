# :watch: :thumbsup: History Check

This tool traverses a Node.js project repository history performing checks to
ensure that certain conventions are followed:

1. There is a lint script
2. There is a test script
3. [Git blessed](http://chris.beams.io/posts/git-commit/) commit conventions
are followed for every commit message.
4. Every commit passes lint: `npm run lint` exits successfully
5. Every commit is green: `npm test` exits successfully

## :scroll: Output and logging

By default the script will pretty print the history and the status of the
checks, when it's stdout is a TTY.  If you pipe or redirect the outputs to
a file, colors will be disabled and only the commit hashes and errors will 
be logged. Commit hashes always go to stdout (and success messages when stdout
is a TTY), check failures always go to stderr, so you probably want to redirect
both stdout and stderr if you are trying to capture the output in a file.

**Output on a TTY**

![Output on a TTY](https://cloud.githubusercontent.com/assets/302663/19640712/e208494c-99d5-11e6-9dc2-26287f453aa8.png)

**Output when stdout and stderr are redirected to a file**

```
λ ~/code/test-repo/ git:(master ✗)» history-check &> output && cat output
HEAD: 13484c58588fff575b048f1d0593b39a9bba2902:
Test: script did not exit successfully
fd597301178b125c578a4b22d3049b5c4f86f3ba:
Commit message: Subject line longer than 50 characters
Commit message: Subject line not capitalised
Commit message: Subject line not separated by a blank line
Commit message: Body not wrapped at 72 characters
Lint: script did not exit successfully
Test: script did not exit successfully
10b18fa3989139e3ed89a32c389125779d42c5e3:
Commit message: Subject line not capitalised
Lint: script did not exit successfully
Test: script did not exit successfully
15bc24d19ec836997e802f5bc02fd1b9693eae2a:
Commit message: Subject line not capitalised
Lint: script did not exit successfully
Test: script did not exit successfully
ROOT: 15bc24d19ec836997e802f5bc02fd1b9693eae2a:
```


## Requirements

* bash (I have no idea if this works on windows bash)
* git
* node (tested on v6)
* [json](http://trentm.com/json/)

##  Installation

```
make install
```

## Uninstall

```
make uninstall
```
