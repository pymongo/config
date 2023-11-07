# aoxiang custom bash settings on Linux

## env_var
### PATH
export PATH="$PATH:$HOME/.cargo/bin:$HOME/go/bin" # protoc need a absolute path of protoc-gen-rust

### other env
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
export GOPROXY=https://goproxy.cn

proxy_host=10.246.23.220
proxy_port=10809
alias socks="ALL_PROXY=http://$proxy_host:$proxy_port/ \
    http_proxy=http://$proxy_host:$proxy_port/ \
    https_proxy=http://$proxy_host:$proxy_port/ \
    HTTP_PROXY=http://$proxy_host:$proxy_port/ \
    HTTPS_PROXY=http://$proxy_host:$proxy_port/"
export http_proxy=http://$proxy_host:$proxy_port/

## alias

### alias command shortcut
export PROXY="all_proxy=192.168.12.12:7890"
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
