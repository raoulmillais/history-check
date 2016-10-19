# :watch: :thumbsup: History Check

This tool traverses a Node.js project repository history performing checks to
ensure that certain conventions are followed:

1. There is a lint script
2. There is a test script
3. [Git blessed](http://chris.beams.io/posts/git-commit/) commit conventions 
are followed for every commit message.
4. Every commit passes lint: `npm run lint` exits successfully
5. Every commit is green: `npm test` exits successfully

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
