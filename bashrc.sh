# aoxiang custom bash settings on Linux

## env_var
### PATH
export PATH="$PATH:/home/w/.cargo/bin" # protoc need a absolute path of protoc-gen-rust
export PATH=/home/w/.tiup/bin:$PATH

### other env
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

: <<'BLOCK_COMMENT'
## unlimit bash history(!!may cause zsh history broken)
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=1000000                   # big big history
export HISTFILESIZE=1000000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" # Save and reload the history after each command finishes
BLOCK_COMMENT

## alias

### alias change keyboard
#alias caps="hidutil property --set '{\"UserKeyMapping\":[{\"HIDKeyboardModifierMappingSrc\":0x700000039,\"HIDKeyboardModifierMappingDst\":0x70000002A}]}'"
#alias uncaps="hidutil property --set '{\"UserKeyMapping\":[{\"HIDKeyboardModifierMappingSrc\":0x700000039,\"HIDKeyboardModifierMappingDst\":0x700000039}]}'"
#alias disable_middle_button="xinput set-button-map 17 1 0 3"
#alias enable_middle_button="xinput set-button-map 17 1 2 3"

### alias command shortcut
alias ec="expressvpn connect"
alias ed="expressvpn disconnect"
alias sysu="systemctl --user"
alias gitac="git add . && git commit -m \"$(date +'%x %X')\""
alias gitproxy="all_proxy=socks5://127.0.0.1:41537 git"

### internel network machine
alias yren_122_docker="ssh root@172.20.0.8"
alias test122="ssh -p 9248 wuaoxiang@123.126.105.106"
alias test125="ssh wuaoxiang@192.168.5.135"
alias a44="ssh root@192.168.1.44"
alias s45="ssh root@192.168.1.45"

alias macshao="ssh zhangchalex@192.168.4.39"
alias air="ssh haizhi@192.168.8.39"
