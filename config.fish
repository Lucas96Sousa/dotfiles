if status is-login
   set -gx PATH $PATH ~/.cargo/bin
   set -x -U GOPATH $HOME/go
   eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    alias s0='shutdown -h +0'
    alias nv='nvim'
 end

if status is-interactive
    and not set -q TMUX
    zoxide init fish | source
    exec tmux
    alias s0='shutdown -h +0'
    alias nv='nvim'
end
