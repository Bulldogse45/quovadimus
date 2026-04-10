Initial Setup

### 1. Install Ruby 
```
sudo apt update
sudo apt install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev git
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate)"' >> ~/.bashrc
source ~/.bashrc
mise use -g ruby@3.2.9
```
### 2. Install Rails
```
gem install rails -v 8.1.2
```
### 3. Bundle
```
bundle
```
### 4. Start Server
```
rails s
```
