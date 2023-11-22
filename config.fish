if status is-login
   set -gx PATH $PATH ~/.cargo/bin
   eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
	end

if status is-interactive
    and not set -q TMUX
    zoxide init fish | source
    exec tmux
    alias s0='shutdown -h +0'
end

