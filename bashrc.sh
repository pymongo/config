# aoxiang custom bash settings on Linux

## env_var
### PATH
export PATH="$PATH:$HOME/.cargo/bin:$HOME/go/bin" # protoc need a absolute path of protoc-gen-rust

### other env
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
# Rust-For-Linux `make xconfig` 
export LLVM=1

## alias

### alias command shortcut
export PROXY="all_proxy=127.0.0.1:34087"
export PROXY2="all_proxy=192.168.12.12:7890"
alias ec="expressvpn connect"
alias edd="expressvpn disconnect"
alias sysu="systemctl --user"
alias ju="journalctl --user --output cat"
alias gitac="git add . && git commit -m \"$(date +'%x %X')\""
# use `github.com.cnpmjs.org` instead?
alias gitproxy="all_proxy=socks5://127.0.0.1:41537 git"

### deprecated/macos alias
: <<'BLOCK_COMMENT'
alias caps="hidutil property --set '{\"UserKeyMapping\":[{\"HIDKeyboardModifierMappingSrc\":0x700000039,\"HIDKeyboardModifierMappingDst\":0x70000002A}]}'"
alias uncaps="hidutil property --set '{\"UserKeyMapping\":[{\"HIDKeyboardModifierMappingSrc\":0x700000039,\"HIDKeyboardModifierMappingDst\":0x700000039}]}'"
alias disable_middle_button="xinput set-button-map 17 1 0 3"
alias enable_middle_button="xinput set-button-map 17 1 2 3"
BLOCK_COMMENT

