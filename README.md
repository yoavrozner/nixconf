# nixconf

## How To Install

```bash
nix-shell -p git stow
cd /home/rozner/Desktop
git clone https://github.com/yoavrozner/nixconf.git
cd ./nixconf
git remote rm origin
git remote add origin git@github.com:yoavrozner/nixconf.git
sudo stow -t / .
ssh-keygen
```
