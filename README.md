# A personal Neovim configuration!
This is a personal repo with my configs for neovim, terminal emulator and other stuff :) 

## Windows WSL2 installation
From windows Powershell run the following commands and follow the stepts to configure a user and a password. By default installs Ubuntu.

```
wsl install 
wsl
```

## Tools and Neovim installation
Update repos!
```
sudo apt update && sudo apt upgrade
```
Install required tools and a NerdFont from https://www.nerdfonts.com/font-downloads

My favorite is: [JetBrainsMono](https://www.programmingfonts.org/#jetbrainsmono)

Additionally, you will need to install some tools needed by Neovim plugins: 
```
sudo apt install make gcc ripgrep unzip git xclip python3-venv luarocks
sudo apt update && sudo apt upgrade
```
Install Neovim, we require the stable version:
```
sudo snap install nvim --classic
nvim
```

Create a .config file to alocate our configurations: 

```
mkdir ~/.config
```

## Configure Github
Now, we need to configure Github to properly work on our repo :) 

Install gh from https://github.com/cli/cli/blob/trunk/docs/install_linux.md
```
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
        && out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
        && cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
```
Follow the promts to authenticate in Github, you can login in the browser or paste an authentication token
```
gh auth login
```

## Configure and init Git, add remote with Github
```
git config --global init.defaultBranch main 
git config --global user.email "you@example"
git config --global user.name "Your Name"
cd ~/.config
git init
git remote add origin https://github.com/anhelikscbr1/.config.git
git pull origin main
```
## Check Neovim installation
Now that we have our nvim config, we need to check that everithing is good to go, you should see the LazyVim UI installing plugins, just wait :)
```
nvim
```

## As terminal emulator I have chosen WezTerm

## As multiplexer install zellij
Since we have cloned our repo, zellij should be configured, we just need to install it
```
sudo snap install zellij --classic
```
