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
