<p align="center">
  <img src="https://media.giphy.com/media/pMFmBkBTsDMOY/giphy.gif"/>
  <img src="https://media.giphy.com/media/7OWssx6Nm84k0OWkBR/giphy.gif"/>
  <br>
</p>

## What is it?
git-ditto is just a simple tool to set up two remote origins in the `.git/config` file of your
repositories. This will make it so that whenever you run `git push`, it will push the changes to both remotes(like github and gitlab 🤫)

---

## Install
```
$ git clone https://github.com/brantstuns/git-ditto
$ ln -s /path/to/cloned/repo/bin/git-ditto /usr/local/bin/git-ditto
```
---

## Useage

### Use the interactive mode at the root of a repo you want to mirror:
`$ git-ditto`

### Use command mode at the root of the repo to quickly add the remote origin:
`$ git-ditto git@gitlab.com:username/coolrepo.git`

---

## Notes
- this script uses [readlink](https://linux.die.net/man/2/readlink) which is available on most, but not all, unix systems (it works on macOS!)