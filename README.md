# dotfiles
## about
my dotfiles

## start
run in your `$HOME` directory:
```
git clone git@github.com:trbntwo/dotfiles.git .dotfiles
```
```
cd .dotfiles/
```
```
chmod u+x dotfiles.sh
```
```
./dotfiles.sh setup -c          # for client (desktop pc), -s for server, -d for dev container
```

to revert:
```
./dotfiles.sh reset -c          # for client (desktop pc), -s for server, -d for dev container
```