# starter
Starter config for NvChad

On the first run, please run the following commands in the neovim terminal to authenticate the plugins:

```
:WakaTimeApiKey
:Copilot auth
```

If you are using NixOS and the nvim config is managed by homemanager, you can link this repo and use `NVIM_APPNAME` to temporary modify and test a new configuration.

```
cp -r ~/.config/nvim ~/.config/tmp-nvim
chmod -R +w ~/.config/tmp-nvim
# or soft link this repo
ln -s $PWD ~/.config/tmp-nvim
NVIM_APPNAME=tmp-nvim nvim

# clean up
rm -r ~/.local/shared/tmp-nvim
rm ~/.config/tmp-nvim
```
