# aoxiang custom bash settings on Linux

## env_var
### PATH
# 手动把 rust 加入到 PATH 环境变量的原因是 pacman 的 rustup 没有 ~/.cargo/env，这样能统一 普通 rustup 和 pacman 的 rustup 所有 cargo install 的 binary
export PATH="$PATH:$HOME/.cargo/bin" # protoc need a absolute path of protoc-gen-rust
#export PATH=$HOME/.tiup/bin:$PATH

### other env
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

## alias

### alias change keyboard
: <<'BLOCK_COMMENT'
alias caps="hidutil property --set '{\"UserKeyMapping\":[{\"HIDKeyboardModifierMappingSrc\":0x700000039,\"HIDKeyboardModifierMappingDst\":0x70000002A}]}'"
alias uncaps="hidutil property --set '{\"UserKeyMapping\":[{\"HIDKeyboardModifierMappingSrc\":0x700000039,\"HIDKeyboardModifierMappingDst\":0x700000039}]}'"
alias disable_middle_button="xinput set-button-map 17 1 0 3"
alias enable_middle_button="xinput set-button-map 17 1 2 3"
BLOCK_COMMENT

### alias command shortcut
alias ec="expressvpn connect"
alias edd="expressvpn disconnect"
alias sysu="systemctl --user"
alias ju="journalctl --user --output cat"
alias gitac="git add . && git commit -m \"$(date +'%x %X')\""
# use `github.com.cnpmjs.org` instead?
alias gitproxy="all_proxy=socks5://127.0.0.1:41537 git"
